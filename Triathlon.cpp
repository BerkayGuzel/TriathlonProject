#include "Triathlon.h"
#include <iostream>
#include <thread>
#include <vector>
#include <algorithm>
#include <chrono>

Triathlon::Triathlon(double swim, double cycle, double run)
    : swimDistance(swim), cycleDistance(cycle), runDistance(run), raceFinished(false) {
    srand(time(0)); // Initialize random seed once
    for (int i = 0; i < 300; i++) {
        teams.push_back(Team("Team " + std::to_string(i + 1)));
    }
    bestAthlete = {"", std::numeric_limits<double>::max()}; // Initialize with max position
}

void Triathlon::updateAthlete(Athlete& athlete, double swimDistance, double cycleDistance, double runDistance) {
    while (!raceFinished) {
        athlete.updatePosition();
        if (athlete.getStage() == 0 && athlete.getPosition() >= swimDistance) {
            std::this_thread::sleep_for(std::chrono::seconds(10)); // 10 seconds transition time
            athlete.changeStage();
        } else if (athlete.getStage() == 1 && athlete.getPosition() >= swimDistance + cycleDistance) {
            std::this_thread::sleep_for(std::chrono::seconds(10)); // 10 seconds transition time
            athlete.changeStage();
        } else if (athlete.getStage() == 2 && athlete.getPosition() >= swimDistance + cycleDistance + runDistance) {
            std::lock_guard<std::mutex> lock(mtx); // Ensure raceFinished is modified safely
            if (athlete.getPosition() < bestAthlete.second) {
                bestAthlete = {athlete.getName(), athlete.getPosition()};
            }
            raceFinished = true;
            break;
        }
    }
}

void Triathlon::startRace() {
    std::vector<std::thread> threads;
    for (auto& team : teams) {
        for (auto& athlete : team.getAthletes()) {
            threads.emplace_back(&Triathlon::updateAthlete, this, std::ref(athlete), swimDistance, cycleDistance, runDistance);
        }
    }
    for (auto& thread : threads) {
        thread.join();
    }

    // Print positions of all athletes when the first one finishes
    for (const auto& team : teams) {
        for (const auto& athlete : team.getAthletes()) {
            std::cout << team.getName() << " " << athlete.getName()
                      << " is at position " << athlete.getPosition()
                      << " in stage " << athlete.getStage() << std::endl;
        }
    }

    // Calculate team rankings based on athletes' positions
    std::vector<std::pair<std::string, double>> teamScores;
    for (const auto& team : teams) {
        double totalPosition = 0;
        for (const auto& athlete : team.getAthletes()) {
            totalPosition += athlete.getPosition();
        }
        teamScores.push_back({team.getName(), totalPosition});
    }

    std::sort(teamScores.begin(), teamScores.end(), [](const auto& a, const auto& b) {
        return a.second < b.second; // Sort by total position in ascending order (less is better)
    });

    std::cout << "Team Rankings:" << std::endl;
    for (const auto& teamScore : teamScores) {
        std::cout << teamScore.first << " with total position " << teamScore.second << std::endl;
    }

    // Print the best athlete and best team
    std::cout << "\nBest Athlete: " << bestAthlete.first << " with position " << bestAthlete.second << std::endl;
    std::cout << "Best Team: " << teamScores.front().first << " with total position " << teamScores.front().second << std::endl;
}
