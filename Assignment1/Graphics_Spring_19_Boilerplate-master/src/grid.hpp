//
//  grid.hpp
//  graphics_asgn1
//
//  Created by Akhil Raja on 29/08/20.
//

#ifndef grid_hpp
#define grid_hpp

#include <stdio.h>
#include "Cell.hpp"
#include "main.h"



class Grid {
public:
    Grid() {stackIndex = 0;}
    void initGrid();
    void drawGrid();
    int  checkNeighbours();
    void removeWalls(Cell *current, Cell *next);
private:
    Cell *current,*next;
    Cell cells[Columns/sizeOfCell*Rows/sizeOfCell];
    int index(int i,int j);
    Cell *stack[Columns/sizeOfCell*Rows/sizeOfCell];
    int stackIndex;
};


#endif /* grid_hpp */
