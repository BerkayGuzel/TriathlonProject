#include "Athlete.h"
#include <cstdlib>
#include <ctime>

Athlete::Athlete(std::string name) : name(name), position(0.0), speed(0.0), stage(0) {
    setSpeed(); // Initialize the speed when the athlete is created
}

void Athlete::setSpeed() {
    speed = (rand() % 5 + 1); // Random speed between 1 and 5
}

void Athlete::updateSpeed() {
    if (stage == 1) {
        speed *= 3; // Speed triples in cycling stage
    } else if (stage == 2) {
        speed /= 3; // Speed reduces to 1/3 in running stage
    }
}

void Athlete::updatePosition() {
    position += speed;
}

void Athlete::changeStage() {
    stage++;
    setSpeed(); // Update speed for the new stage
    updateSpeed();
}

std::string Athlete::getName() const {
    return name;
}

double Athlete::getPosition() const {
    return position;
}

double Athlete::getSpeed() const {
    return speed;
}

int Athlete::getStage() const {
    return stage;
}

bool Athlete::hasReachedGoal(double goal) const {
    return position >= goal;
}
