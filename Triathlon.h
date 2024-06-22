#include <vector>
#include <string>
#include "Team.h"
#include <thread>
#include <mutex>
#include <atomic>

class Triathlon {
private:
    double swimDistance;
    double cycleDistance;
    double runDistance;
    std::vector<Team> teams;
    std::mutex mtx; // Mutex for thread-safe raceFinished
    std::atomic<bool> raceFinished; // Atomic for thread-safe race finished check
    std::pair<std::string, double> bestAthlete; // Store best athlete info

    void updateAthlete(Athlete& athlete, double swimDistance, double cycleDistance, double runDistance);

public:
    Triathlon(double swim, double cycle, double run);
    void startRace();
};
