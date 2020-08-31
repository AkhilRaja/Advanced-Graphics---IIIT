#include "main.h"
#include "timer.h"
#include "ball.h"
#include "Cell.hpp"
#include "grid.hpp"
#include "player.hpp"
#include "enemy.hpp"

using namespace std;

GLMatrices Matrices;
GLuint     programID;
GLFWwindow *window;

//Method Declarations
Cell * detectCurrentGhostCell(Enemy ghost);

/**************************
* Game Manager *
**************************/

//Level
Grid grid;
bool isLevelLoaded = false;

//Player Setup
Player player;
Cell *currentCell;

//Enemy Setup
Enemy ghost1,ghost2,ghost3,ghost4;
Cell *ghostCurrentCell1,*ghostCurrentCell2,*ghostCurrentCell3,*ghostCurrentCell4;

//Camera Configs
float screen_zoom = 1, screen_center_x = 0, screen_center_y = 0;
float camera_rotation_angle = 0;

Timer t60(1.0 / 60);
Timer t1(1.0);

int vis[1000];

float m_zoom = 1;
//Draw Function
void draw() {
    // clear the color and depth in the frame buffer
    glClear (GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glUseProgram (programID);
    
    
    //Setup Scene
    grid.drawGrid(levelLoadedCallback);
    
    //Draw Player and Enemies
    if(isLevelLoaded) {
        
        ///Player Specifics
        //Compute the current cell for the player
        detectCurrentPlayerCell();
        //Set current cell of Player
        player.setCurrentCell(currentCell);
        if(currentCell != NULL) {
            if(currentCell->fruit) {
                player.updateScore();
                currentCell->fruit = false;
            }
        }
        
        //Collision with the walls
        player.checkForWalls();
        //Draw the player
        player.drawPlayer();
        
        
        ///Enemy Specifics
        //Draw the enemy
        ghost1.drawEnemy();
        ghost2.drawEnemy();
        ghost3.drawEnemy();
        ghost4.drawEnemy();
        ghostCurrentCell1= detectCurrentGhostCell(ghost1);
        ghostCurrentCell2= detectCurrentGhostCell(ghost2);
        ghostCurrentCell3= detectCurrentGhostCell(ghost3);
        ghostCurrentCell4= detectCurrentGhostCell(ghost4);
        if(t1.processTick()) {
//        Everything here is called 1sec
             ghost1.computePath(&grid,ghostCurrentCell1,currentCell,vis);
             ghost2.computePath(&grid,ghostCurrentCell2,currentCell,vis);
             ghost3.computePath(&grid,ghostCurrentCell3,currentCell,vis);
             ghost4.computePath(&grid,ghostCurrentCell4,currentCell,vis);
        }
        
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
    int zoomOut = glfwGetKey(window,GLFW_KEY_Z);
    int zoomIn = glfwGetKey(window,GLFW_KEY_X);
    
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
    if(zoomOut) {
        m_zoom+=0.01;
        zoomOrtho(m_zoom);
    }
    if(zoomIn) {
        m_zoom-=0.01;
        zoomOrtho(m_zoom);
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
    player.initPlayer(1.5, 1.5);
    
    //Enemy Initilisation
    ghost1 = Enemy();
    ghost1.initEnemy(0.5, 40);
    
    ghost2 = Enemy();
    ghost2.initEnemy(30.5, 16);

    ghost3 = Enemy();
    ghost3.initEnemy(42.5, 4);

    ghost4 = Enemy();
    ghost4.initEnemy(24.5, 40);
       
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

void detectCurrentPlayerCell() {
    Cell *cells = grid.getCells();
    int cellsLength = Columns/sizeOfCell*Rows/sizeOfCell;
    for(int i=0;i<cellsLength;i++) {
        if(player.getX()< (cells+i)->getGridX()+sizeOfCell &&
           player.getX()> (cells+i)->getGridX()) {
            if(player.getY()< (cells+i)->getGridY()+sizeOfCell &&
               player.getY()> (cells+i)->getGridY()) {
//                cout<<"Current cell is : " << i;
                currentCell = (cells+i);
            }
        }
    }
}
//Detect Ghost Current Cell (Refactor to take the object as input and find its cell)

Cell* detectCurrentGhostCell(Enemy ghost) {
    Cell* ghostCurrentCell;
    Cell *cells = grid.getCells();
    int cellsLength = Columns/sizeOfCell*Rows/sizeOfCell;
    for(int i=0;i<cellsLength;i++) {
        if(ghost.getX()<= (cells+i)->getGridX()+sizeOfCell &&
           ghost.getX()>= (cells+i)->getGridX()) {
            if(ghost.getY()<= (cells+i)->getGridY()+sizeOfCell &&
               ghost.getY()>= (cells+i)->getGridY()) {
//                cout<<"Current cell is : " << i;
                ghostCurrentCell = (cells+i);
            }
        }
    }
    return ghostCurrentCell;
}

bool detect_collision(bounding_box_t a, bounding_box_t b) {
    return (abs(a.x - b.x) * 2 < (a.width + b.width)) &&
           (abs(a.y - b.y) * 2 < (a.height + b.height));
}

