//
//  Cell.cpp
//  ANTTWEAKBAR_116_OGLCORE_GLFW
//
//  Created by Akhil Raja on 29/08/20.
//

#include <stdio.h>
#include "Cell.hpp"


void Cell::initCell(int x,int y) {
    gridX = x;
    gridY = y;
}

void Cell::drawBox() {
    glLineWidth(1.0);
    
    glColor3f(1.0, 0, 0);
    if(walls[0]) {
        glBegin(GL_LINES);
            glVertex2f(gridX, gridY);
            glVertex2f(gridX+sizeOfCell, gridY);
        glEnd();
    }
    if(walls[1]) {
        glBegin(GL_LINES);
            glVertex2f(gridX+sizeOfCell, gridY);
            glVertex2f(gridX+sizeOfCell, gridY+sizeOfCell);
        glEnd();
    }
    if(walls[2]) {
        glBegin(GL_LINES);
            glVertex2f(gridX+sizeOfCell, gridY+sizeOfCell);
            glVertex2f(gridX, gridY+sizeOfCell);
        glEnd();
    }
    if(walls[3]) {
        glBegin(GL_LINES);
            glVertex2f(gridX, gridY+sizeOfCell);
            glVertex2f(gridX, gridY);
        glEnd();
    }
    
}
