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
Directions tdir = bottomD;

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

//Set the defaults
void Enemy::initEnemy(float x, float y) {
    this->x = x;
    this->y = y;
    this->weak=0;
    this->dead=0;
}

//Animate the enemy
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
//Weak Enemy Color swap
void Enemy::playFrameden(int frame[]) {
    glPointSize(3);
    for(int i=0;i<96;i++){
        if(i%12 == 0) {
            tempX = 0;
            if(i!=0)
                tempY+=0.2;
        }
        if(frame[i]) {
            glBegin(GL_POINTS);
            glColor3f(0.6, 0.3,0.2);
            glVertex2f (x+tempX, y+tempY);
            glEnd();
        }
        tempX+=0.2;
    }
}

//Draw enemy
void Enemy::drawEnemy() {
    if(!dead){
        if(weak){
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
                playFrameden(frame2);
            }
        }
        else{
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
        
    }
}

void Enemy::moveGhost() {
    switch (tdir) {
        case leftD:
            x-=3;
            break;
        case rightD:
            x+=3;
            break;
        case topD:
            y+=3;
            break;
        case bottomD:
            y-=3;
            break;
        default:
            break;
    }
    
}

int cIndex=0;
Cell cells[100];bool g=0;
void Enemy::computePath(Grid *grid ,Cell *currentLocation,Cell *pacman,int vis[]) {
    
    Cell* newCell;
    
    if(pacman == currentLocation) {
        if(weak) {
            dead = true;
        }
        else
            std::cout<<"Pacman Dead";
    }
    
    //Cell Index
    int poss=0;
    int v[5];
    for(int i=0;i<4;i++){
        if(!currentLocation->walls[i])
            v[poss++]=i;
    }
    int p=rand()%poss;
    tdir = (Directions)v[p];
    moveGhost();
    
}

