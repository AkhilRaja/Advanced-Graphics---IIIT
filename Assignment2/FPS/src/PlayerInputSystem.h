//
//  PlayerInputSystem.h
//  SimpleFPS
//
//  Created by Akhil Raja on 12/09/20.
//

#ifndef __SimpleFPS__PlayerInputSystem__
#define __SimpleFPS__PlayerInputSystem__

#include <iostream>
#include  <GLFW/glfw3.h>
#include "Entity.h"
#include "Vector2.h"

class PlayerInputSystem
{
private:
    
    Vector2 _lastMousePosition;
    
    glm::vec3 _eyeVector;
    
    GLFWwindow *_window;
    
    Entity *_currentPlayer;
    
    PlayerInputSystem();
    ~PlayerInputSystem();
    
    void keyCallback(GLFWwindow *window, int key, int scancode, int action, int mods);
    
public:
    
    void setCurrentPlayer(Entity *newPlayer);
    
    void update();
    
    static PlayerInputSystem& getPlayerInputSystem();
    static void destroyPlayerInputSystem();
    
    static void keyCallbackFun(GLFWwindow *window, int key, int scancode, int action, int mods);
};

#endif /* defined(__SimpleFPS__PlayerInputSystem__) */
