//
//  CameraSystem.cpp
//  SimpleFPS
//
//  Created by Akhil Raja on 12/09/20.
//

#include "CameraSystem.h"
#include "RenderSystem.h"

Entity* CameraSystem::getCurrentCamera()
{
    return _currentCamera;
}

void CameraSystem::setCurrentCamera(Entity *newCamera)
{
    _currentCamera = newCamera;
    
    RenderSystem *renderSystem = &RenderSystem::getRenderSystem();
    renderSystem->setCurrentCamera(_currentCamera);
}

CameraSystem::CameraSystem()
{
    
}

CameraSystem::~CameraSystem()
{
    
}

CameraSystem& CameraSystem::getCameraSystem()
{
    static CameraSystem *cameraSystem = NULL;
    
    if (cameraSystem == NULL) {
        
        cameraSystem = new CameraSystem();
    }
    
    return *cameraSystem;
}

void CameraSystem::destroyCameraSystem()
{
    CameraSystem *cameraSystem = &getCameraSystem();
    delete cameraSystem;
}
