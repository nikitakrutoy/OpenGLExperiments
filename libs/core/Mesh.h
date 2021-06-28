//
// Created by Nikita Krutoy on 17.06.2021.
//


#ifndef TESTOPENGLPROJECT_MESH_H
#define TESTOPENGLPROJECT_MESH_H

#include <vector>
#include "Texture.h"
#include "Shader.h"
#include "Material.h"
#include "ArrayObject.h"
#include "ArrayBuffer.h"
#include "ElementBuffer.h"
#include "Vertex.h"


class Mesh {
public:
    // mesh data
    std::vector<Vertex>       vertices;
    std::vector<unsigned int> indices;

    Mesh(std::vector<Vertex> vertices, std::vector<unsigned int> indices);
    void Draw(Material &material);
private:
    //  render data
    ArrayObject arrayObject;
    ArrayBuffer arrayBuffer;
    ElementBuffer elementBuffer;

    void Setup();
};


#endif //TESTOPENGLPROJECT_MESH_H
