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
    Player() {currentDirection = rightD;}
    void initPlayer(int x,int y);
    void drawPlayer();
    bool checkForWalls();
    
    //Getters and Setters
    int getX() {return x;}
    int getY() {return y;}
    void setDirection(int dir) {currentDirection = (Directions)dir;}
    void setCurrentCell(Cell *cell) { currentCell = cell;}
private:
    double x,y;
    Cell *currentCell;
    Directions currentDirection;
    bool canMove;
    int lives;
    
    void updateCell();
};


#endif /* player_hpp */
