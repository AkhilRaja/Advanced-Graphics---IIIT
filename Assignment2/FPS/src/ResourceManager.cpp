//
//  ResourceManager.cpp
//  SimpleFPS
//
//  Created by Akhil Raja on 12/09/20.
//

#include "ResourceManager.h"
#include "TraingleVertices.h"
#include "CubeVertices.h"

std::vector<ShaderInterface *>* ResourceManager::getShaderArray()
{
    return _shaderArray;
}

std::vector<VertexBuffer *>* ResourceManager::getVertexBufferArray()
{
    return _vertexBufferArray;
}

ResourceManager::ResourceManager()
{
    
    //Populating the shaders to be used in the project
    //Update to remove absolute path and copy resources
    
    _shaderArray = new std::vector<ShaderInterface *>();
    ShaderInterface *shader = new ShaderInterface("/Users/akhilraja/Documents/IIITH/GR-AR-VR/GR-AR-VR-Assignments/Assignment2/FPS/Shaders/ColorShader.vsh", "/Users/akhilraja/Documents/IIITH/GR-AR-VR/GR-AR-VR-Assignments/Assignment2/FPS/Shaders/ColorShader.fsh");
    _shaderArray->push_back(shader);
    ShaderInterface *lightShader = new ShaderInterface("/Users/akhilraja/Documents/IIITH/GR-AR-VR/GR-AR-VR-Assignments/Assignment2/FPS/Shaders/SimpleLightShader.vsh", "/Users/akhilraja/Documents/IIITH/GR-AR-VR/GR-AR-VR-Assignments/Assignment2/FPS/Shaders/SimpleLightShader.fsh");
    _shaderArray->push_back(lightShader);
    
    //Shader data defaults (Color and Light position)
    shaderData = new ShaderData(makeVector4(1.0f, 0.0f, 1.0f, 1.0f), glm::vec3(0.5f, .5f, .5f));
    
    
    //Creating the vertex buffer arrays
    _vertexBufferArray = new std::vector<VertexBuffer *>();
    VertexBuffer *vertexBuffer = new VertexBuffer(vertices,
                                                  sizeof(vertices),
                                                  GL_TRIANGLES,
                                                  3,
                                                  sizeof(GLfloat)*3,
                                                  _shaderArray->at(0),
                                                  shaderData,
                                                  NULL,
                                                  NULL);
    _vertexBufferArray->push_back(vertexBuffer);
    VertexBuffer *cubeVertexBuffer = new VertexBuffer(cubeVertices,
                                                  sizeof(cubeVertices),
                                                  GL_TRIANGLES,
                                                  36,
                                                  sizeof(VertexDataPN),
                                                  _shaderArray->at(1),
                                                shaderData,
                                                  (GLvoid *)(offsetof(VertexDataPN, positionCoordinates)),
                                                  (GLvoid *)(offsetof(VertexDataPN, normalCoordinates)));
    _vertexBufferArray->push_back(cubeVertexBuffer);
}

ResourceManager::~ResourceManager()
{
    
    for (std::vector<ShaderInterface *>::iterator iterator = _shaderArray->begin();
         iterator != _shaderArray->end();
         iterator++) {
            if(*iterator)
                delete *iterator;
    }
    
    delete _shaderArray;
    
    for (std::vector<VertexBuffer *>::iterator iterator = _vertexBufferArray->begin();
         iterator != _vertexBufferArray->end();
         iterator++) {
        if(*iterator)
            delete *iterator;
    }
    
    delete shaderData;
    delete _vertexBufferArray;
}

ResourceManager& ResourceManager::getResourceManager()
{
    static ResourceManager *resourceManager = NULL;
    
    if (resourceManager == NULL) {
        resourceManager = new ResourceManager();
    }
    
    return *resourceManager;
}

void ResourceManager::destroyResourceManager()
{
    ResourceManager *resourceManager = &getResourceManager();
    delete resourceManager;
}
