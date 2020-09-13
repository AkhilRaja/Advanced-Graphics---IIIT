//
//  CameraSystem.h
//  SimpleFPS
//
//  Created by Akhil Raja on 12/09/20.

#ifndef __SimpleFPS__CameraSystem__
#define __SimpleFPS__CameraSystem__

#include <iostream>
#include "Entity.h"

class CameraSystem
{
private:
    
    Entity *_currentCamera;
    
    CameraSystem();
    ~CameraSystem();
    
public:
    
    Entity *getCurrentCamera();
    void setCurrentCamera(Entity *newCamera);
    
    static CameraSystem& getCameraSystem();
    static  void destroyCameraSystem();
};


#endif /* defined(__SimpleFPS__CameraSystem__) */
