//
//  enemy.hpp
//  graphics_asgn1
//
//  Created by Akhil Raja on 30/08/20.
//

#ifndef enemy_hpp
#define enemy_hpp

#include <stdio.h>
#include "Cell.hpp"
#include "grid.hpp"

class Enemy {
public:
    bool dead,weak;
    
    Enemy(){
    }
    void initEnemy(float x,float y);
    void drawEnemy();
    
    //Getters and Setters
    int getX() {return x;}
    int getY() {return y;}
    void computePath(Grid* grid,Cell *currentLocation,Cell *pacman, int vis[]);
    void moveGhost();
private:
    double x,y;
    void playFrame(int frame[]);
    void playFrameden(int frame[]);
};


#endif /* enemy_hpp */
