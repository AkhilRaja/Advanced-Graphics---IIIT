#include <iostream>
#include <cmath>
#include <fstream>
#include <vector>

#include <GL/glew.h>
#include <GLFW/glfw3.h>

#define GLM_FORCE_RADIANS
#include <glm/glm.hpp>
#include <glm/gtx/transform.hpp>
#include <glm/gtc/matrix_transform.hpp>

#include "main.h"

using namespace std;

void error_callback(int error, const char *description) {
    fprintf(stderr, "Error: %s\n", description);
}

void quit(GLFWwindow *window) {
    glfwDestroyWindow(window);
    glfwTerminate();
    exit(EXIT_SUCCESS);
}

/* Executed when window is resized to 'width' and 'height' */
/* Modify the bounds of the screen here in glm::ortho or Field of View in glm::Perspective */
void reshapeWindow(GLFWwindow *window, int width, int height) {
    int fbwidth = width, fbheight = height;
    /* With Retina display on Mac OS X, GLFW's FramebufferSize
       is different from WindowSize */
    glfwGetFramebufferSize(window, &fbwidth, &fbheight);

    glViewport (0, 0, (GLsizei) fbwidth, (GLsizei) fbheight);
    
    // Ortho projection for 2D views
    glMatrixMode (GL_PROJECTION);
    glLoadIdentity();
    glOrtho(0.0,Columns , 0.0, Rows, -1.0, 1.0);
    glMatrixMode (GL_MODELVIEW);
}


void zoomOrtho(float m_zoom) {
    // Zoomed projection
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    
//  Zoom by bringing the canvas to center of the screen
//    glOrtho(-Columns * m_zoom, Columns * m_zoom,
//        -Rows * m_zoom, Rows * m_zoom,
//        -1, 1 );
//
    glOrtho(0, Columns * m_zoom,
        0, Rows * m_zoom,
        -1, 1 );
    
    // Pan camera on modelview
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
//    glTranslate(m_xpan, -m_ypan, 0);
}

