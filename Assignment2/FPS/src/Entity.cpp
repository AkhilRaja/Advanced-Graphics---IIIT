//
//  Entity.cpp
//  SimpleFPS
//
//  Created by Akhil Raja on 12/09/20.
//

#include "Entity.h"

VertexBuffer *Entity::getVertexBuffer()
{
    return _vertexBuffer;
}

void Entity::setVertexBuffer(VertexBuffer *newVertexBuffer)
{
    _vertexBuffer = newVertexBuffer;
}

glm::vec3 Entity::getPosition()
{
    return _position;
}

void Entity::setPosition(glm::vec3 newPosition)
{
    _position = newPosition;
}

glm::vec3 Entity::getScale()
{
    return _scale;
}

void Entity::setScale(glm::vec3 newScale)
{
    _scale = newScale;
}

glm::vec3 Entity::getRotation()
{
    return _rotation;
}

void Entity::setRotation(glm::vec3 newRotation)
{
    _rotation = newRotation;
}

glm::vec3 Entity::getVelocity()
{
    return _velocity;
}

void Entity::setVelocity(glm::vec3 newVelocity)
{
    _velocity = newVelocity;
}

glm::vec3 Entity::getScaleVelocity()
{
    return _scaleVelocity;
}

void Entity::setScaleVelocity(glm::vec3 newScaleVelocity)
{
    _scaleVelocity = newScaleVelocity;
}

glm::vec3 Entity::getRotationVelocity()
{
    return _rotationVelocity;
}

void Entity::setRotationVelocity(glm::vec3 newRotationVelocity)
{
    _rotationVelocity = newRotationVelocity;
}

glm::vec3 Entity::getEyeVector()
{
    return _eyeVector;
}

void Entity::setEyeVector(glm::vec3 newEyeVector)
{
    _eyeVector = newEyeVector;
}

glm::vec3 Entity::getUpVector()
{
    return _upVector;
}

void Entity::setUpVector(glm::vec3 newUpVector)
{
    _upVector = newUpVector;
}

Entity::Entity(VertexBuffer *vertexBuffer, glm::vec3 position):
_vertexBuffer(vertexBuffer), _position(position),
_scale(glm::vec3(1.0f, 1.0f, 1.0f)), _rotation(glm::vec3(0.0f, 0.0f, 0.0f)),
_velocity(glm::vec3(0.0f, 0.0f, 0.0f)), _scaleVelocity(glm::vec3(0.0f, 0.0f, 0.0f)),
_rotationVelocity(glm::vec3(0.0f, 0.0f, 0.0f)), _eyeVector(glm::vec3(0.0f, 0.0f, 0.0f)),
_upVector(glm::vec3(0.0f, 1.0f, 0.0f)),
_entityName("None")
{
}

Entity::~Entity()
{
    
}
