//
//  enemy.cpp
//  graphics_asgn1
//
//  Created by Akhil Raja on 30/08/20.
//

#include "enemy.hpp"
#include "main.h"

//Temporary Variables to be moved to the header file sometime
float tempX = 0;
float tempY = 0;
int animationSpeed = 50;
int animIndex = 0;
int swapFrame = 1;


int frame1[96] = {
         1,1,0,0,0,0,0,0,0,0,1,1,
         0,0,1,1,0,1,1,0,1,1,0,0,
         0,0,0,1,1,0,0,1,1,0,0,0,
         1,1,1,1,1,1,1,1,1,1,1,1,
         1,1,1,0,0,1,1,0,0,1,1,1,
         1,1,1,1,1,1,1,1,1,1,1,1,
         0,1,1,1,1,1,1,1,1,1,1,0,
         0,0,0,0,1,1,1,1,0,0,0,0
};

int frame2[96] = {
       0,1,0,1,0,0,0,0,1,0,1,0,
       0,0,1,0,1,0,0,1,0,1,0,0,
       0,0,0,1,0,0,0,0,1,0,0,0,
       1,1,1,1,1,1,1,1,1,1,1,1,
       1,1,1,0,1,1,1,1,0,1,1,1,
       0,1,1,1,1,1,1,1,1,1,1,0,
       0,0,1,1,1,1,1,1,1,1,0,0,
       0,0,0,1,1,1,1,1,1,0,0,0
};

void Enemy::initEnemy(float x, float y) {
    this->x = x;
    this->y = y;
}

void Enemy::playFrame(int frame[]) {
    glPointSize(3);
    for(int i=0;i<96;i++){
        if(i%12 == 0) {
            tempX = 0;
            if(i!=0)
                tempY+=0.2;
        }
        if(frame[i]) {
            glBegin(GL_POINTS);
               glColor3f(0, 1,0);
               glVertex2f (x+tempX, y+tempY);
            glEnd();
        }
        tempX+=0.2;
    }
}

void Enemy::drawEnemy() {
    tempY = 0;
    animIndex ++;
    //Play Frame 1
    if(animIndex % animationSpeed == 0) {
        swapFrame *= -1;
        animIndex = 0;
    }
    if(swapFrame <0 ) {
        playFrame(frame1);
    }
    else {
        playFrame(frame2);
    }
}

//This method should be called each time the enemy moves to destination(cell1 to next cell)


void Enemy::computePath(Cell *currentLocation,Cell *pacman) {
    //Check the current location
    //Look for possible directions from current
    //Pick one
    //Add current to stack
    //Move to selected direction
    //Repeat till either goal is acheived or deadend is reached
    //If deadend pop and start again
    
    if(currentLocation == pacman) {
        std::cout<<"Kill pacman";
        //Gameover here
    }
    
    
    
    
}

