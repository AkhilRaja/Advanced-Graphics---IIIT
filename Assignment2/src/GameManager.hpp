//
//  GameManager.hpp
//  graphics_asgn1
//
//  Created by Akhil Raja on 15/09/20.
//

#ifndef GameManager_hpp
#define GameManager_hpp

#include <stdio.h>
#include <iostream>
#include <cmath>

// GLEW
#define GLEW_STATIC
#include <GL/glew.h>

// GLFW
#include <GLFW/glfw3.h>

// Other Libs
#include "SOIL2/SOIL2.h"

// GLM Mathematics
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

// Other includes
#include "Shader.h"
#include "Camera.h"
//#include "Vertices.h"



//SingleTon GameManager Class
class GameManager
{
private:
 
    bool _running = true;
    GameManager(bool running);
    ~GameManager();

public:
    GLFWwindow *_window;
    void runGameLoop();
    void setWindow(GLFWwindow *window) { _window = window;}
    static GameManager& getGameManager();
    static void destroyGameManager();
    
};


#endif /* GameManager_hpp */

