//
//  PlayerInputSystem.cpp
//  SimpleFPS
//
//  Created by Akhil Raja on 12/09/20.
//

#include "PlayerInputSystem.h"
#include<glm/glm.hpp>

float pitch=0,yaw=0,roll=0;

void PlayerInputSystem::setCurrentPlayer(Entity *newPlayer)
{
    _currentPlayer = newPlayer;
    std::cout<<newPlayer->_entityName<<" : is the entities name";
    newPlayer->_entityName = "Player";
    _eyeVector = glm::normalize(newPlayer->getEyeVector());
}

PlayerInputSystem::PlayerInputSystem(): _window(glfwGetCurrentContext())
{
    glfwGetCursorPos(_window, &_lastMousePosition.x, &_lastMousePosition.y);
}

PlayerInputSystem::~PlayerInputSystem()
{
    
}

void PlayerInputSystem::keyCallback(GLFWwindow *window,
                                    int key,
                                    int scancode,
                                    int action,
                                    int mods)
{
    if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS) {
        
        if (GLFW_CURSOR_DISABLED == glfwGetInputMode(glfwGetCurrentContext(), GLFW_CURSOR)) {
        glfwSetInputMode(glfwGetCurrentContext(), GLFW_CURSOR, GLFW_CURSOR_NORMAL);
    } else {
        glfwSetInputMode(glfwGetCurrentContext(), GLFW_CURSOR, GLFW_CURSOR_DISABLED);
    }
        
    }
    
}

void PlayerInputSystem::update()
{
    if (_currentPlayer != NULL &&
        glfwGetInputMode(_window, GLFW_CURSOR) == GLFW_CURSOR_DISABLED) {
        
        if (glfwGetKey(_window, GLFW_KEY_W)) {
            _currentPlayer->setPosition((_currentPlayer->getPosition() + (_eyeVector * 0.07f)));
        }
        
        if (glfwGetKey(_window, GLFW_KEY_S)) {
            _currentPlayer->setPosition((_currentPlayer->getPosition() - (_eyeVector* 0.07f)));
        }
        
        if (glfwGetKey(_window, GLFW_KEY_A)) {
            _currentPlayer->setPosition((_currentPlayer->getPosition()- (glm::cross(_eyeVector, glm::vec3(0.0f, 1.0f, 0.0f))* 0.07f)));
        }
        
        if (glfwGetKey(_window, GLFW_KEY_D)) {
            _currentPlayer->setPosition((_currentPlayer->getPosition()+ (glm::cross(_eyeVector, glm::vec3(0.0f, 1.0f, 0.0f))* 0.07f)));
        }
        
        Vector2 currentMousePosition;
        glfwGetCursorPos(_window, &currentMousePosition.x, &currentMousePosition.y);
        
    
        float xoffset = currentMousePosition.x - _lastMousePosition.x;
        float yoffset = _lastMousePosition.y - currentMousePosition.y;
        
        float sensitivity = 0.2f;
        xoffset *= sensitivity;
        yoffset *= sensitivity;

        yaw   += xoffset;
        pitch += yoffset;

        if(pitch > 89.0f)
            pitch = 89.0f;
        if(pitch < -89.0f)
            pitch = -89.0f;

        glm::vec3 direction;
        direction.x = cos(glm::radians(yaw)) * cos(glm::radians(pitch));
        direction.y = sin(glm::radians(pitch));
        direction.z = sin(glm::radians(yaw)) * cos(glm::radians(pitch));
        _eyeVector.x = glm::normalize(direction).x;
        _eyeVector.y = glm::normalize(direction).y;
        _eyeVector.z = glm::normalize(direction).z;
        
        
        glfwGetCursorPos(_window, &_lastMousePosition.x, &_lastMousePosition.y);
        
        _currentPlayer->setEyeVector((_currentPlayer->getPosition() + _eyeVector));
        
    }
}

void PlayerInputSystem::keyCallbackFun(GLFWwindow *window,
                                       int key,
                                       int scancode,
                                       int action,
                                       int mods)
{
    PlayerInputSystem *playerInputSystem = &getPlayerInputSystem();
    playerInputSystem->keyCallback(window, key, scancode, action, mods);
}

PlayerInputSystem& PlayerInputSystem::getPlayerInputSystem()
{
    static PlayerInputSystem *playerInputSystem = NULL;
    
    if (playerInputSystem == NULL) {
        
        glfwSetKeyCallback(glfwGetCurrentContext(),*keyCallbackFun);
        glfwSetInputMode(glfwGetCurrentContext(), GLFW_CURSOR, GLFW_CURSOR_DISABLED);
        
        playerInputSystem = new PlayerInputSystem();
    }
    
    return *playerInputSystem;
}

void PlayerInputSystem::destroyPlayerInputSystem()
{
    PlayerInputSystem *playerInputSystem = &getPlayerInputSystem();
    delete playerInputSystem;
}
