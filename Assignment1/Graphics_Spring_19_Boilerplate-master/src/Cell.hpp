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
    Cell();
    void initGrid(int x,int y);
    void drawGrid();
    void drawBox(int x, int y);
    void tick();
private:
    int gridX,gridY;
};


#endif /* Cell_hpp */
