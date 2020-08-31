//
//  player.hpp
//  graphics_asgn1
//
//  Created by Akhil Raja on 30/08/20.
//

#ifndef player_hpp
#define player_hpp

#include <stdio.h>
#include "main.h"
#include "Cell.hpp"



class Player {
public:
    Player() {currentDirection = rightD;movementSpeed = 0.1;score = 0;}
    void initPlayer(float x,float y);
    void drawPlayer();
    bool checkForWalls();
    
    //Getters and Setters
    int getX() {return x;}
    int getY() {return y;}
    void setDirection(int dir) {currentDirection = (Directions)dir;}
    void setCurrentCell(Cell *cell) { currentCell = cell;}
    void setMovementSpeed(double speed) {movementSpeed = speed;}
    void updateScore();
private:
    double x,y;
    Cell *currentCell;
    Directions currentDirection;
    bool canMove;
    int lives;
    int score;
    double movementSpeed;
    void updateCell();
};


#endif /* player_hpp */
