//
//  Entity.hpp
//  ANTTWEAKBAR_116_OGLCORE_GLFW
//
//  Created by Akhil Raja on 15/09/20.
//

#ifndef Entity_hpp
#define Entity_hpp

#include <iostream>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>


class GameObject
{
private:
    
    glm::vec3 _position;
    glm::vec3 _scale;
    glm::vec3 _rotation;
    
    glm::vec3 _velocity;
    glm::vec3 _scaleVelocity;
    glm::vec3 _rotationVelocity;
    
    glm::vec3 _eyeVector;
    glm::vec3 _upVector;
    
public:
    
    std::string _gameObjectName;

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

    glm::mat4 GetViewMatrix()
    {
        return glm::lookAt( this->_position, this->_position + this->_eyeVector, this->_upVector );
    }
    
    GameObject(glm::vec3 position);
    ~GameObject();
};


#endif /* Entity_hpp */
