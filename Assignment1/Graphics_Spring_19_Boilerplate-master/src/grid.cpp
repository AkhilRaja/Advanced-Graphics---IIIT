//
//  grid.cpp
//  graphics_asgn1
//
//  Created by Akhil Raja on 29/08/20.
//

#include "grid.hpp"
#include<iostream>

void Grid::initGrid() {
    int index=0;
    std::cout<<"Loading Level ..";
    for(int i=0;i<Columns;i+=sizeOfCell) {
        for(int j=0;j<Rows;j+=sizeOfCell) {
            cells[index++].initCell(i,j);
        }
    }
    current = &cells[0];
}

void Grid::drawGrid(void (*levelLoadedCallback)()) {
    //Loading the level
    int cellLength = sizeof(cells)/sizeof(cells[0]);
    for(int i=0;i<cellLength;i++) {
        cells[i].drawBox();
    }
    
    if(!levelLoaded) {
        //Set Visited of the current cell to true
        if(current != NULL)
            current->visited = 1;
        
        int nextIndex = checkNeighbours();
        
        if( nextIndex != -1) {
            next = &cells[nextIndex];
            next->visited = 1;
            //Remove common walls
            removeWalls(current, next);
            //Add the current to the stack
            stack[stackIndex++] = current;
            current = next;
        } else if(stackIndex > 0){
            current = stack[--stackIndex];
        } else {
            //Callback to let the main know level is loaded
            levelLoaded = true;
            
            //If needed forward the cells from here to the main cpp
            levelLoadedCallback();
        }
    }
}

//Return the index of the nighbours
int Grid::index(int i,int j) {
    if(i<0||j<0||i>(Columns-1)||j>(Rows-1)) {
        return -1;
    }
    return (j/sizeOfCell) + (i/sizeOfCell) * (Columns/sizeOfCell);
}

// Method to check the visited status of the neighbouring cells and return and unvisited cell
int Grid::checkNeighbours() {
    int neighbours[4] = {0,0,0,0};
    int neighbourSize = 0;
    
    int currentIndex = index(current->getGridX(), current->getGridY());
    
    int bottom = index(current->getGridX(), current->getGridY()-sizeOfCell);
    if(bottom!=-1 && !cells[bottom].visited) {
        neighbours[neighbourSize++] = bottom;
    }
    
    int right = index(current->getGridX()+sizeOfCell, current->getGridY());
    if(right!=-1 && !cells[right].visited) {
        neighbours[neighbourSize++] = right;
    }
        
    int top = index(current->getGridX(), current->getGridY()+sizeOfCell);
    if(top!=-1 && !cells[top].visited) {
        neighbours[neighbourSize++] = top;
    }
        
    
    int left = index(current->getGridX()-sizeOfCell, current->getGridY());
    if(left!=-1 && !cells[left].visited) {
        neighbours[neighbourSize++] = left;
    }
        
    if(neighbourSize > 0) {
        int randomNeighbour = neighbours[rand()%neighbourSize];
        return randomNeighbour;
    }
    else
        return -1;
}

//Method to remove the common and shared walls between the two cells
void Grid::removeWalls(Cell *current, Cell *next) {
    int diffX = current->getGridX() - next->getGridX();
    int diffY = current->getGridY() - next->getGridY();
    if(diffX >= sizeOfCell) {
        current->walls[3] = false;
        next->walls[1] = false;
    } else if (diffX <= -sizeOfCell){
        current->walls[1] = false;
        next->walls[3] = false;
    }
    
    if(diffY >= sizeOfCell) {
        current->walls[0] = false;
        next->walls[2] = false;
    } else if (diffY <= -sizeOfCell){
        current->walls[2] = false;
        next->walls[0] = false;
    }
    
}

//Helper method to return cell from direction
Cell* Grid::getNeighbour(Directions dir) {
    int cellIndex = -1;
    switch (dir) {
        case leftD:
            cellIndex = index(current->getGridX()-sizeOfCell, current->getGridY());
            break;
        case rightD:
            cellIndex = index(current->getGridX()+sizeOfCell, current->getGridY());
            break;
        case topD:
            cellIndex = index(current->getGridX(), current->getGridY()+sizeOfCell);
            break;
        case bottomD:
            cellIndex = index(current->getGridX(), current->getGridY()-sizeOfCell);
            break;
    }
}
