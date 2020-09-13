//
//  Scene.h
//  SimpleFPS
//
//  Created by Akhil Raja on 12/09/20.
//

#ifndef __SimpleFPS__Scene__
#define __SimpleFPS__Scene__

#include <iostream>
#include "Entity.h"
#include <vector>

class Scene
{
private:
    
    std::vector<Entity *> *_children;
    
public:
    
    std::vector<Entity *>* getChildren();
    
    Scene();
    ~Scene();
    
};

#endif /* defined(__SimpleFPS__Scene__) */
