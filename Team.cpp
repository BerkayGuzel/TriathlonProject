#include "Team.h"

Team::Team(std::string name) : name(name) {
    for (int i = 0; i < 3; i++) {
        athletes.push_back(Athlete("Athlete " + std::to_string(i + 1)));
    }
}

std::string Team::getName() const {
    return name;
}

std::vector<Athlete>& Team::getAthletes() {
    return athletes;
}

const std::vector<Athlete>& Team::getAthletes() const {
    return athletes;
}
