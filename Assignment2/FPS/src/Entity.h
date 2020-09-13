//
//  Entity.h
//  SimpleFPS
//
//  Created by Akhil Raja on 12/09/20.
//

#ifndef __SimpleFPS__Entity__
#define __SimpleFPS__Entity__

#include <iostream>
#include "VertexBuffer.h"
#include <vector>
#include <glm/glm.hpp>

class Entity
{
private:
    
    VertexBuffer *_vertexBuffer;
    
    glm::vec3 _position;
    glm::vec3 _scale;
    glm::vec3 _rotation;
    
    glm::vec3 _velocity;
    glm::vec3 _scaleVelocity;
    glm::vec3 _rotationVelocity;
    
    glm::vec3 _eyeVector;
    glm::vec3 _upVector;
    
public:
    
    std::string _entityName;
    
    VertexBuffer *getVertexBuffer();
    void setVertexBuffer(VertexBuffer *newVertexBuffer);
    
    glm::vec3 getPosition();
    void setPosition(glm::vec3 newPosition);
    
    glm::vec3 getScale();
    void setScale(glm::vec3 newScale);
    
    glm::vec3 getRotation();
    void setRotation(glm::vec3 newRotation);
    
    glm::vec3 getVelocity();
    void setVelocity(glm::vec3 newVelocity);
    
    glm::vec3 getScaleVelocity();
    void setScaleVelocity(glm::vec3 newScaleVelocity);
    
    glm::vec3 getRotationVelocity();
    void setRotationVelocity(glm::vec3 newRotationVelocity);
    
    glm::vec3 getEyeVector();
    void setEyeVector(glm::vec3 newEyeVector);
    
    glm::vec3 getUpVector();
    void setUpVector(glm::vec3 newUpVector);

    Entity(VertexBuffer *vertexBuffer, glm::vec3 position);
    ~Entity();
};

#endif /* defined(__SimpleFPS__Entity__) */
