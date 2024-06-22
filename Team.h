#include <vector>
#include <string>
#include "Athlete.h"

class Team {
private:
    std::string name;
    std::vector<Athlete> athletes;

public:
    Team(std::string name);
    std::string getName() const;
    std::vector<Athlete>& getAthletes();
    const std::vector<Athlete>& getAthletes() const; // Add const version
};

