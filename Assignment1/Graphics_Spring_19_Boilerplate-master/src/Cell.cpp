//
//  Cell.cpp
//  ANTTWEAKBAR_116_OGLCORE_GLFW
//
//  Created by Akhil Raja on 29/08/20.
//

#include <stdio.h>
#include "Cell.hpp"


Cell::Cell(){
    std::cout<<"Constructor call";
}

void Cell::initGrid(int x, int y) {
    gridX = x;
    gridY = y;
}

void Cell::drawGrid() {
    for(int i=0;i<gridX;i+=2) {
        for(int j=0;j<gridY;j+=2) {
            drawBox(i, j);
        }
    }
}

void Cell::drawBox(int x,int y) {
    glLineWidth(1.0);
    glColor3f(1.0, 0, 0);

    glBegin(GL_LINE_LOOP);
        glVertex2f(x, y);
        glVertex2f(x+2, y);
        glVertex2f(x+2, y+2);
        glVertex2f(x, y+2);
    glEnd();
}
