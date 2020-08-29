//
//  Cell.cpp
//  ANTTWEAKBAR_116_OGLCORE_GLFW
//
//  Created by Akhil Raja on 29/08/20.
//

#include <stdio.h>
#include "Cell.hpp"


//Set the initial X and Y positions for the cell
void Cell::initCell(int x,int y) {
    gridX = x;
    gridY = y;
}

//Method to draw each Cell
void Cell::drawBox() {
    glLineWidth(1.0);
    
    //Debug Area
    if(visited) {
        glColor3f(0.5, 0.5, 0.1);
        glBegin(GL_POLYGON);
            glVertex2f(gridX, gridY);
            glVertex2f(gridX+sizeOfCell, gridY);
            glVertex2f(gridX+sizeOfCell, gridY+sizeOfCell);
            glVertex2f(gridX, gridY+sizeOfCell);
        glEnd();
    }
    else
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


// Getter and Setter methods

int Cell::getGridX() {
    return gridX;
}
int Cell::getGridY() {
    return gridY;
}
