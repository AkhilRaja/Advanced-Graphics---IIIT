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
    Cell(){
        //Set all walls to true
        for(int i=0;i<4;i++)
            walls[i] = 1;
        //Set visited to false
        visited = 0;
    };
    void initCell(int x,int y);
    void drawBox();
    void tick();
private:
    int gridX,gridY;
    int walls[4];
    int visited;
};


#endif /* Cell_hpp */
