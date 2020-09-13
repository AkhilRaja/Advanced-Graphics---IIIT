//
//  MovementSystem.h
//  SimpleFPS
//
//  Created by Akhil Raja on 12/09/20.
//

#ifndef __SimpleFPS__MovementSystem__
#define __SimpleFPS__MovementSystem__

#include <iostream>
#include <GLFW/glfw3.h>
#include "Entity.h"

class MovementSystem
{
private:
    
    MovementSystem();
    ~MovementSystem();
    
public:
    
    void update(std::vector<Entity *> *entityArray);
    
    static MovementSystem& getMovementSystem();
    static void destroyMovementSystem();
};


#endif /* defined(__SimpleFPS__MovementSystem__) */
