#ifndef ATHLETE_H
#define ATHLETE_H

#include <string>

class Athlete {
private:
    std::string name;
    double position;
    double speed;
    int stage; // 0: Swimming, 1: Cycling, 2: Running

public:
    Athlete(std::string name);
    void setSpeed();
    void updateSpeed();
    void updatePosition();
    void changeStage();
    std::string getName() const;
    double getPosition() const;
    double getSpeed() const;
    int getStage() const;
    bool hasReachedGoal(double goal) const;
};

#endif
