#include "main.h"
#include "timer.h"
#include "ball.h"
#include "Cell.hpp"
#include "grid.hpp"
#include "player.hpp"
#include "enemy.hpp"

using namespace std;

/**************************
* Game Manager *
**************************/



GLMatrices Matrices;
GLuint     programID;
GLFWwindow *window;

//Method Declarations
Cell * detectCurrentGhostCell(Enemy ghost);


//Unable to print the text(GLUT and FreeGlut methods not compiling on mac) so pushing the score and lives to debug 
void displayText() {
//    unsigned char string[] = "The quick god jumps over the lazy brown fox.";
//    int w;
//    w = glutBitmapLength(GLUT_BITMAP_TIMES_ROMAN_10, string);
//    glRasterPos2f(0., 0.);
//    float x = .5; /* Centre in the middle of the window */
//    glRasterPos2f(x - (float) 10 / 2, 0.);
//    glColor(1., 0., 0.);

//    for (int i = 0; i < len; i++) {
//    glutBitmapString(GLUT_BITMAP_TIMES_ROMAN_24, "Text to appear!");

//        glutBitmapCharacter(<#void *font#>, <#int character#>)
//        glutBitmapCharacter(GLUT_BITMAP_TIMES_ROMAN_10, string[i]);
//    }

}


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

float m_zoom = 1;int fc=INT_MIN,sc=INT_MIN;
//Draw Function
void draw() {
    // clear the color and depth in the frame buffer
    glClear (GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glUseProgram (programID);
    
    //Setup Scene
    grid.drawGrid(levelLoadedCallback);
    
    //Draw Player and Enemies
    if(isLevelLoaded) {
        if(player.getScore() < Columns/sizeOfCell * Rows/sizeOfCell) {
        
        fc++;
        sc++;
        
        ///Player Specifics
        //Compute the current cell for the player
        detectCurrentPlayerCell();
        //Set current cell of Player
        player.setCurrentCell(currentCell);
        
        //Powerups and Gameplay
        if(currentCell != NULL) {
            if(currentCell->fruit) {
                if(currentCell->powerUpKillGhost){
                    fc=0;
                    //all ghosts weak variable should be on
                       ghost1.weak=1;
                       ghost2.weak=1;
                       ghost3.weak=1;
                       ghost4.weak=1;
                    
                }
                if(currentCell->powerUpSpeed){
                    player.setMovementSpeed(0.2);
                    sc=0;
                }
                player.updateScore();
                currentCell->fruit = false;
            }
            
            //Duration for kill powerup
            if(fc>=2000){
                fc=INT_MIN;
                //all ghosts becomes powerful again
                    ghost1.weak=0;
                    ghost2.weak=0;
                    ghost3.weak=0;
                    ghost4.weak=0;
            }
            //Duration for Speed powerup
            if(sc>=3000){
                sc=INT_MIN;
                   player.setMovementSpeed(0.1);
            }
            
        }
        
        //Collision with the walls
        player.checkForWalls();
        //Draw the player
        player.drawPlayer();
        
        ///Enemy Specifics
        //Draw the enemies
        ghost1.drawEnemy();
        ghost2.drawEnemy();
        ghost3.drawEnemy();
        ghost4.drawEnemy();
        
        //Detect the current cell of ghosts
        ghostCurrentCell1= detectCurrentGhostCell(ghost1);
        ghostCurrentCell2= detectCurrentGhostCell(ghost2);
        ghostCurrentCell3= detectCurrentGhostCell(ghost3);
        ghostCurrentCell4= detectCurrentGhostCell(ghost4);

       //Everything here is called 1sec
        if(t1.processTick()) {
             ghost1.computePath(&grid,ghostCurrentCell1,currentCell,vis);
             ghost2.computePath(&grid,ghostCurrentCell2,currentCell,vis);
             ghost3.computePath(&grid,ghostCurrentCell3,currentCell,vis);
             ghost4.computePath(&grid,ghostCurrentCell4,currentCell,vis);
        }
        }
        else {
            cout<<"Gameover and you won";
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
    int setStage = glfwGetKey(window,GLFW_KEY_S);
    
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
    if(setStage) {
        zoomOrtho(1.05);
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

