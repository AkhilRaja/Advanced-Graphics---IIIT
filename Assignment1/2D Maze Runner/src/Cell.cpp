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
    drawFruit();
    glLineWidth(5.0);
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
    
//      //Creating the Grid
//       if(visited) {
//           glColor4d(0.2, 0.2, 0.5, 0.0);
//           glBegin(GL_POLYGON);
//               glVertex2f(gridX, gridY);
//               glVertex2f(gridX+sizeOfCell, gridY);
//               glVertex2f(gridX+sizeOfCell, gridY+sizeOfCell);
//               glVertex2f(gridX, gridY+sizeOfCell);
//           glEnd();
//       }
    drawFruit();
    
}

void Cell::drawFruit() {
   
    if(fruit) {
        if(powerUpSpeed)
        {
            glPointSize(10);
            glColor4d(0, 0, 1, 1);
        }
        else if(powerUpKillGhost)
        {
            glPointSize(7);
            glColor4d(1, 0, 0, 0.5);
        }
        else{
            glColor4d(1, 1, 0, 0.5);
            glPointSize(5);
        }
        
        glBegin(GL_POINTS);
        glVertex2f(gridX+1.5,gridY+1.5);
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
