#include <cmath>
#include <GLUT/glut.h>


//Defining some variables to facilitate camera and object movement
float translateObjectX = 0;
float translateObjectY = 1;
float translateObjectZ = 0;
float angle = 0;
float translateCameraX = 0;
float translateCameraY = 0;
float translateCameraZ = 0;

int cameraPosition = 1;

void keyboardInput(unsigned char key, int x, int y) {
    //Translate the object with keys W,A,S,D,Q,E
    if(key == 119) {
        translateObjectY+=0.1f;
    }
    else if(key == 115 ) {
        translateObjectY-=0.1f;
    }
    else if(key == 97 ) {
        translateObjectX-=0.1f;
    }
    else if(key == 100 ) {
        translateObjectX+=0.1f;
    }
    else if(key == 113 ) {
        translateObjectZ-=0.1f;
    }
    else if(key == 101 ) {
        translateObjectZ+=0.1f;
    }
    
    //Camera Translation I,K,J,L,N,M
    else if(key == 105 ) {
        translateCameraY+=0.1f;
    }
    else if(key == 107 ) {
        translateCameraY-=0.1f;
    }
    else if(key == 106) {
        translateCameraX-=0.1f;
    }
    else if(key == 108 ) {
        translateCameraX+=0.1f;
    }
    else if(key == 110 ) {
        translateCameraZ-=0.1f;
    }
    else if(key == 109 ) {
        translateCameraZ+=0.1f;
    }
    
    else if (key == 49) {
        cameraPosition = 1;
    }
    
    else if(key == 50) {
        cameraPosition = 2;
    }
    else if (key == 51) {
        cameraPosition = 3;
    }
}

void renderScene(void) {
    // Clear Color and Depth Buffers
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    // Reset transformations
    glLoadIdentity();

    glTranslatef(translateCameraX, translateCameraY, translateCameraZ);
    // Setting up the camera's inital position
    
    if (cameraPosition == 1) {
        gluLookAt(0.0f, 1.0f, 10.0f, // 3D coordinate of the camera
        0.0f, 1.0f,  4.0f, //
        0.0f, 1.0f,  0.0f); //
    }
    else if(cameraPosition == 2) {
        gluLookAt(-5.0f, 1.0f, 10.0f, // 3D coordinate of the camera
        -1.0f, 1.0f,  4.0f, //
        0.0f, 1.0f,  0.0f); //
    }
    else {
        gluLookAt(5.0f, 1.0f, 10.0f, // 3D coordinate of the camera
        0.0f, 1.0f,  4.0f, //
        0.0f, 1.0f,  0.0f); //
    }
    
//
//    gluLookAt( 0.0f, 1.0f, 10.0f, // 3D coordinate of the camera
//            0.0f, 1.0f,  4.0f, //
//            0.0f, 1.0f,  0.0f); //

    
    glTranslatef(0, 0, 0);
    
    // Draw ground
    glBegin(GL_QUADS);
        glColor3f(0.3f, 0.3f, 0.3f);
        glVertex3f(-100.0f, 0.0f, -100.0f);
        glVertex3f(-100.0f, 0.0f,  100.0f);
        glVertex3f( 100.0f, 0.0f,  100.0f);
        glVertex3f( 100.0f, 0.0f, -100.0f);
    glEnd();

//     Simple animation to rotate our camera
        glRotatef(angle, 0.0f, 1.0f, 0.0f);

    glTranslatef(translateObjectX, translateObjectY, translateObjectZ);
    glBegin(GL_TRIANGLES);           // Begin drawing the pyramid with 4 triangles
         // Front
         glColor3f(1.0f, 0.0f, 0.0f);     // Red
         glVertex3f( 0.0f, 1.0f, 0.0f);
         glColor3f(0.0f, 1.0f, 0.0f);     // Green
         glVertex3f(-1.0f, -1.0f, 1.0f);
         glColor3f(0.0f, 0.0f, 1.0f);     // Blue
         glVertex3f(1.0f, -1.0f, 1.0f);
    
         // Right
         glColor3f(1.0f, 0.0f, 0.0f);     // Red
         glVertex3f(0.0f, 1.0f, 0.0f);
         glColor3f(0.0f, 0.0f, 1.0f);     // Blue
         glVertex3f(1.0f, -1.0f, 1.0f);
         glColor3f(0.0f, 1.0f, 0.0f);     // Green
         glVertex3f(1.0f, -1.0f, -1.0f);

         // Back
         glColor3f(1.0f, 0.0f, 0.0f);     // Red
         glVertex3f(0.0f, 1.0f, 0.0f);
         glColor3f(0.0f, 1.0f, 0.0f);     // Green
         glVertex3f(1.0f, -1.0f, -1.0f);
         glColor3f(0.0f, 0.0f, 1.0f);     // Blue
         glVertex3f(-1.0f, -1.0f, -1.0f);

         // Left
         glColor3f(1.0f,0.0f,0.0f);       // Red
         glVertex3f( 0.0f, 1.0f, 0.0f);
         glColor3f(0.0f,0.0f,1.0f);       // Blue
         glVertex3f(-1.0f,-1.0f,-1.0f);
         glColor3f(0.0f,1.0f,0.0f);       // Green
         glVertex3f(-1.0f,-1.0f, 1.0f);
    
      glEnd();   // Done drawing the pyramid
    angle += 0.5f;
    
    glutSwapBuffers();
    glutKeyboardFunc(keyboardInput);
}



void changeSize(int w, int h) {

    // Prevent a divide by zero, when window is too short
    // (you cant make a window of zero width).
    if(h == 0)
        h = 1;
    float ratio = 1.0* w / h;

    // Use the Projection Matrix
    glMatrixMode(GL_PROJECTION);

    // Reset Matrix
    glLoadIdentity();

    // Set the viewport to be the entire window
    glViewport(0, 0, w, h);

    // Set the correct perspective.
    // You can experiment with different view projections.
    gluPerspective(45,ratio,1,1000);

    // Get Back to the Modelview
    glMatrixMode(GL_MODELVIEW);
}


int main(int argc, char **argv) {

    // initialise GLUT, and create a Window of some size
    glutInit(&argc, argv);
    glutInitWindowPosition(100,100);
    glutInitWindowSize(320,320);

    // Creating a window with a double buffer window, activated
    // the depth buffer and and selects an RGBA window
    glutInitDisplayMode(GLUT_DEPTH | GLUT_DOUBLE | GLUT_RGBA);
    
    glutCreateWindow("Intro to OpenGL");

    // Telling GLUT which function is responsible for rendering
    // called by GLUT everytime the window needs to be painted
    glutDisplayFunc(renderScene);

    // called by GLUT everytime the window is resized
    glutReshapeFunc(changeSize);

    // called by GLUT everytime the window is idle
    glutIdleFunc(renderScene);

    /*
        Call a Function to Process Keyboard Input Here
    */

    // Initialise a depth buffer
    glEnable(GL_DEPTH_TEST);

    // enter GLUT event processing cycle
    glutMainLoop();

    return 1;
}
