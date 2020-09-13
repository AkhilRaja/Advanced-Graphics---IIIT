//
//  Vector4.h
//  graphics_asgn1
//
//  Created by Akhil Raja on 12/09/20.
//

#ifndef __SimpleFPS__Vector4__
#define __SimpleFPS__Vector4__

#include <iostream>
#include <GLFW/glfw3.h>

typedef struct
{
    GLfloat x;
    GLfloat y;
    GLfloat z;
    GLfloat w;
    
} Vector4;

Vector4 makeVector4(GLfloat x, GLfloat y, GLfloat z, GLfloat w);

#endif /* defined(__SimpleFPS__Vector4__) */
