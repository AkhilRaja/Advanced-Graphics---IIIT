//
//  enemy.hpp
//  graphics_asgn1
//
//  Created by Akhil Raja on 30/08/20.
//

#ifndef enemy_hpp
#define enemy_hpp

#include <stdio.h>
#include "Cell.hpp"

class Enemy {
public:
    Enemy(){
    }
    void initEnemy(float x,float y);
    void drawEnemy();
    
    //Getters and Setters
    int getX() {return x;}
    int getY() {return y;}
    void computePath(Cell *currentLocation,Cell *pacman);
private:
    double x,y;
    void playFrame(int frame[]);
};


#endif /* enemy_hpp */
