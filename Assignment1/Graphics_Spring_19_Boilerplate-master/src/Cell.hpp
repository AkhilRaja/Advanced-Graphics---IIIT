//
//  Cell.hpp
//  ANTTWEAKBAR_116_OGLCORE_GLFW
//
//  Created by Akhil Raja on 28/08/20.
//
#include "main.h"
#ifndef Cell_hpp
#define Cell_hpp


class Cell {
public:
    //Public Variables (Probably make them private)
    //Create getters and setters later
    int visited;
    int walls[4];
    bool fruit;
    bool powerUpSpeed;
    bool powerUpKillGhost;
    
    Cell(){
        //Set all walls to true
        for(int i=0;i<4;i++)
            walls[i] = 1;
        //Set visited to false
        visited = 0;
        fruit = true;
        powerUpSpeed = false;
        powerUpKillGhost = false;
    };
    void initCell(int x,int y);
    void drawBox();
    void tick();
    int getGridX();
    int getGridX(Directions dir) {
        if(dir == leftD) {
            return gridX;
        }
        if(dir == rightD) {
            return gridX + sizeOfCell;
        }
    }
    int getGridY();
    int getGridY(Directions dir) {
        if(dir == topD) {
            return gridY + sizeOfCell;
        }
        if(dir == bottomD) {
            return gridY;
        }
    }
    void drawFruit();
private:
    int gridX,gridY;
};


#endif /* Cell_hpp */
