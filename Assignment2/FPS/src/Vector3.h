//
//  Vector3.h
//  graphics_asgn1
//
//  Created by Akhil Raja on 12/09/20.
//


#ifndef __SimpleFPS__Vector3__
#define __SimpleFPS__Vector3__

#include <iostream>
#include <GLFW/glfw3.h>
#include "Matrix3.h"

typedef struct {
    
    GLfloat x;
    GLfloat y;
    GLfloat z;
    
} Vector3;

Vector3 makeVector3(GLfloat x, GLfloat y, GLfloat z);
Vector3 addVector3(Vector3 vectorA, Vector3 vectorB);
Vector3 subtractVector3(Vector3 vectorA, Vector3 vectorB);
Vector3 normalizeVector3(Vector3 vector);
Vector3 scalerMultiplyVector3(Vector3 vectorToMultiply, GLfloat scalerValue);
Vector3 crossProductVector3(Vector3 vectorA, Vector3 vectorB);
GLfloat dotProductVector3(Vector3 vectorA, Vector3 vectorB);
Vector3 transformVector3(Vector3 vector, Matrix3 transformationMatrix);

#endif /* defined(__SimpleFPS__Vector3__) */
