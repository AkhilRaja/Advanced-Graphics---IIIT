//
//  Scene.cpp
//  SimpleFPS
//
//  Created by Akhil Raja on 12/09/20.
//

#include "Scene.h"
#include "CameraSystem.h"
#include "ResourceManager.h"
#include "PlayerInputSystem.h"

std::vector<Entity *>* Scene::getChildren()
{
    return _children;
}

Scene::Scene()
{
    _children = new std::vector<Entity *>();
    
    ResourceManager *resourceManager = &ResourceManager::getResourceManager();
    Entity *entity =new Entity(resourceManager->getVertexBufferArray()->at(1),
                       glm::vec3(0.0f, 0.0f, 5.0f));
    entity->_entityName = "Cube";
    
    _children->push_back(entity);

//    Entity *entity2 =new Entity(resourceManager->getVertexBufferArray()->at(1),
//                       makeVector3(5.0f, 0.0f, 5.0f));
//    _children->push_back(entity2);
    
    Entity *camera = new Entity(NULL, glm::vec3(0.0f, 0.0f, 0.0f));
    camera->setEyeVector(glm::normalize(glm::vec3(0.0f, 0.0f, 1.0f)));
    
    PlayerInputSystem *playerInputSystem = &PlayerInputSystem::getPlayerInputSystem();
    playerInputSystem->setCurrentPlayer(camera);
    
    _children->push_back(camera);
    
    CameraSystem *cameraSystem = &CameraSystem::getCameraSystem();
    cameraSystem->setCurrentCamera(camera);
}

Scene::~Scene()
{
    for (std::vector<Entity *>::iterator iterator = _children->begin(); iterator != _children->end(); iterator++) {
        delete *iterator;
    }
    
    delete _children;
}
