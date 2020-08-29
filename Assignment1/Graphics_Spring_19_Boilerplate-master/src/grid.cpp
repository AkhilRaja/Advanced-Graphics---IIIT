//
//  grid.cpp
//  graphics_asgn1
//
//  Created by Akhil Raja on 29/08/20.
//

#include "grid.hpp"


void Grid::initGrid() {
    int index=0;
    for(int i=0;i<Columns;i+=sizeOfCell) {
        for(int j=0;j<Rows;j+=sizeOfCell) {
            cells[index++].initCell(i,j);
        }
    }
    current = &cells[0];
}

void Grid::drawGrid() {
    current->visited = 1;
    int cellLength = sizeof(cells)/sizeof(cells[0]);
    for(int i=0;i<cellLength;i++) {
        cells[i].drawBox();
    }
}

//Return the index of the nighbours
int Grid::index(int i,int j) {
    if(i<0||j<0||i>(Columns/sizeOfCell)-1||j>(Rows/sizeOfCell)-1) {
        return -1;
    }
    return (i/sizeOfCell) + (j/sizeOfCell) * (Columns/sizeOfCell);
}

// Method to check the visited status of the neighbouring cells and return and unvisited cell
Cell Grid::checkNeighbours() {
    Cell neighbours[4];
    
    int bottom = index(current->getGridX(), current->getGridY()-sizeOfCell);
    if(bottom!=-1 && !cells[bottom].visited)
        neighbours[0] = cells[bottom];
    
    int right = index(current->getGridX()+sizeOfCell, current->getGridY());
    if(right!=-1 && !cells[right].visited)
        neighbours[1] = cells[right];
    
    int top = index(current->getGridX(), current->getGridY()+sizeOfCell);
    if(top!=-1 && !cells[top].visited)
        neighbours[2] = cells[top];
    
    int left = index(current->getGridX()-sizeOfCell, current->getGridY());
    if(left!=-1 && !cells[left].visited)
        neighbours[3] = cells[right];
    
    int neighbourSize = sizeof(neighbours)/sizeof(neighbours[0]);
    if(neighbourSize > 0) {
        return neighbours[rand()%neighbourSize];
    }
    else
        return;
}
