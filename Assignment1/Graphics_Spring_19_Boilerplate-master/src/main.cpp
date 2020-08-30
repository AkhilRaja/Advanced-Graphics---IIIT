#include "main.h"
#include "timer.h"
#include "ball.h"
#include "Cell.hpp"
#include "grid.hpp"
#include "player.hpp"

using namespace std;

GLMatrices Matrices;
GLuint     programID;
GLFWwindow *window;

/**************************
* Game Manager *
**************************/

//Level
Grid grid;
bool isLevelLoaded = true;

//Player Setup
Player player;

//Camera Configs
float screen_zoom = 1, screen_center_x = 0, screen_center_y = 0;
float camera_rotation_angle = 0;

Timer t60(1.0 / 60);


//Draw Function
void draw() {
    // clear the color and depth in the frame buffer
    glClear (GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glUseProgram (programID);
    
    //Setup Scene
    grid.drawGrid(levelLoadedCallback);
    
    //Draw Player
    if(isLevelLoaded) {
        player.drawPlayer();
    }
}

//Level Loaded Callback
void levelLoadedCallback() {
    std::cout<<"Level Loaded";
    isLevelLoaded = true;
    
    //TODO: Mark the start and end points
    //TODO: Spawn the Player
}

////TODO:: Move this to input.cpp
void tick_input(GLFWwindow *window) {
    int bottom  = glfwGetKey(window, GLFW_KEY_DOWN);
    int left  = glfwGetKey(window, GLFW_KEY_LEFT);
    int right = glfwGetKey(window, GLFW_KEY_RIGHT);
    int top = glfwGetKey(window, GLFW_KEY_UP);

    if (left) {
        player.setDirection(leftD);
    }
    if (right) {
        player.setDirection(rightD);
    }
    if (bottom) {
        player.setDirection(bottomD);
    }
    if (top) {
        player.setDirection(topD);
    }
}

//Not sure what this is
void tick_elements() {
//    ball1.tick();
//    camera_rotation_angle += 1;
}

/* Initialize the OpenGL rendering properties */
/* Perform all init here */

void initGL(GLFWwindow *window, int width, int height) {
    
    // Create the models
    grid = Grid();
    grid.initGrid();
    
    //Player Initialisation
    player = Player();
    player.initPlayer(1, 1);
    
    // Create and compile our GLSL program from the shaders
    // Had to provide the absolute path to load the files
    
//    programID = LoadShaders("/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/src/Sample_GL.vert", "/Users/akhilraja/Documents/IIITH/AdvancedGraphics/Assignment1/Graphics_Spring_19_Boilerplate-master/src/Sample_GL.frag");
////    // Get a handle for our "MVP" uniform
//    Matrices.MatrixID = glGetUniformLocation(programID, "MVP");

    reshapeWindow (window, width, height);

    // Background color of the scene
    glClearColor (COLOR_BACKGROUND.r / 256.0, COLOR_BACKGROUND.g / 256.0, COLOR_BACKGROUND.b / 256.0, 0.0f); // R, G, B, A
    glClearDepth (1.0f);
    glEnable (GL_DEPTH_TEST);
    glDepthFunc (GL_LEQUAL);

    cout << "VENDOR: " << glGetString(GL_VENDOR) << endl;
    cout << "RENDERER: " << glGetString(GL_RENDERER) << endl;
    cout << "VERSION: " << glGetString(GL_VERSION) << endl;
    cout << "GLSL: " << glGetString(GL_SHADING_LANGUAGE_VERSION) << endl;
}


int main(int argc, char **argv) {
    srand(time(0));
    int width  = 600;
    int height = 600;

    window = initGLFW(width, height);
    initGL (window, width, height);

    /* Draw in loop */
    while (!glfwWindowShouldClose(window)) {
        // Game Loop (FPS check)
        if (t60.processTick()) {
            // 60 fps
            // OpenGL Draw commands
            draw();
            // Swap Frame Buffer in double buffering
            glfwSwapBuffers(window);

            tick_elements();
            tick_input(window);
        }

        // Poll for Keyboard and mouse events
        glfwPollEvents();
    }

    quit(window);
}

bool detect_collision(bounding_box_t a, bounding_box_t b) {
    return (abs(a.x - b.x) * 2 < (a.width + b.width)) &&
           (abs(a.y - b.y) * 2 < (a.height + b.height));
}

