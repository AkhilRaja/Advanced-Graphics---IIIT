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
    Grid() {}
    void initGrid();
    void drawGrid();
private:
    Cell cells[Columns/sizeOfCell*Rows/sizeOfCell];
};


#endif /* grid_hpp */
