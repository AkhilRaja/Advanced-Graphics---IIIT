//
//  ShaderData.cpp
//  SimpleFPS
//
//  Created by Akhil Raja on 12/09/20.
//

#include "ShaderData.h"

Vector4 ShaderData::get_uColorValue()
{
    return _uColorValue;
}

void ShaderData::set_uColorValue(Vector4 newColor)
{
    _uColorValue = newColor;
}

glm::vec3 ShaderData::get_uLightPosition()
{
    return _uLightPosition;
}

void ShaderData::set_uLightPosition(glm::vec3 newPosition)
{
    _uLightPosition = newPosition;
}

ShaderData::ShaderData(Vector4 newColor, glm::vec3 newPosition):
_uColorValue(newColor),_uLightPosition(newPosition)
{
    
}

ShaderData::~ShaderData()
{
    
}
