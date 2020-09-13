//
//  Vector4.cpp
////  graphics_asgn1
//
//  Created by Akhil Raja on 12/09/20.
//


#include "Vector4.h"

Vector4 makeVector4(GLfloat x, GLfloat y, GLfloat z, GLfloat w)
{
    Vector4 newVector;
    newVector.x = x;
    newVector.y = y;
    newVector.z = z;
    newVector.w = w;
    
    return newVector;
}
