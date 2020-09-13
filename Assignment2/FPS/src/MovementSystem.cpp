//
//  MovementSystem.cpp
//  SimpleFPS
//
//  Created by Akhil Raja on 12/09/20.
//

#include "MovementSystem.h"
#include<iostream.h>

MovementSystem::MovementSystem()
{
    
}

MovementSystem::~MovementSystem()
{
    
}

void MovementSystem::update(std::vector<Entity *> *entityArray)
{
    for (std::vector<Entity *>::iterator iterator = entityArray->begin(); iterator != entityArray->end(); iterator++) {

        Entity *entity = *iterator;
//        std::cout<<"Entity: "<<entity->_entityName;
        entity->setPosition((entity->getPosition()+ entity->getVelocity()));
        entity->setScale((entity->getScale() + entity->getScaleVelocity()));
        entity->setRotation((entity->getRotation() + entity->getRotationVelocity()));
        
    }
}

MovementSystem& MovementSystem::getMovementSystem()
{
    static MovementSystem* movementSystem = NULL;
    
    if (movementSystem == NULL) {
        movementSystem = new MovementSystem();
    }
    
    return *movementSystem;
}

void MovementSystem::destroyMovementSystem()
{
    MovementSystem *movementSystem = &getMovementSystem();
    delete movementSystem;
}
