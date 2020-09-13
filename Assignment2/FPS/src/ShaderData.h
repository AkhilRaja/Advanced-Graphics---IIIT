//
//  ShaderData.h
//  SimpleFPS
//
//  Created by Akhil Raja on 12/09/20.
//

#ifndef __SimpleFPS__ShaderData__
#define __SimpleFPS__ShaderData__

#include <iostream>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include "Vector4.h"

class ShaderData
{
private:
    
    Vector4 _uColorValue;
    glm::vec3 _uLightPosition;
    
public:
    
    Vector4 get_uColorValue();
    void set_uColorValue(Vector4 newColor);
    
    glm::vec3 get_uLightPosition();
    void set_uLightPosition(glm::vec3 newPosition);
    
    ShaderData(Vector4 newColor, glm::vec3 newPosition);
    ~ShaderData();

    
};

#endif /* defined(__SimpleFPS__ShaderData__) */
