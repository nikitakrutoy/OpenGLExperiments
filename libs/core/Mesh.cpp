//
// Created by Nikita Krutoy on 17.06.2021.
//

#include "Mesh.h"

#include <utility>


Mesh::Mesh(std::vector<Vertex> vertices, std::vector<unsigned int> indices):
    arrayObject(), arrayBuffer(vertices), elementBuffer(indices)
{
    vertices = std::move(vertices);
    indices = std::move(indices);

    Setup();
}

void Mesh::Draw(Material &material) {
    unsigned int diffuseNr = 1;
    unsigned int specularNr = 1;
    Shader* shader = material.GetShader();
    std::vector<Texture> textures = material.GetTextures();
    if (!shader->isLoaded) {
        std::cout << "Material shader is not loaded for current mesh" << std::endl;
    }
    for(unsigned int i = 0; i < textures.size(); i++)
    {
        glActiveTexture(GL_TEXTURE0 + i); // activate proper texture unit before binding
        // retrieve texture number (the N in diffuse_textureN)
        std::string number;
        std::string name = textures[i].type;
        if(name == "texture_diffuse")
            number = std::to_string(diffuseNr++);
        else if(name == "texture_specular")
            number = std::to_string(specularNr++);

        shader->setFloat("material." + name + number, i);
        glBindTexture(GL_TEXTURE_2D, textures[i].id);
    }
    glActiveTexture(GL_TEXTURE0);

    // draw mesh
    arrayObject.Bind();
    glDrawElements(GL_TRIANGLES, indices.size(), GL_UNSIGNED_INT, 0);
    arrayObject.Unbind();
}

void Mesh::Setup() {
    arrayObject.Bind();
    // vertex positions
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void*)0);
    // vertex normals
    glEnableVertexAttribArray(1);
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void*)offsetof(Vertex, Normal));
    // vertex texture coords
    glEnableVertexAttribArray(2);
    glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void*)offsetof(Vertex, TexCoords));
    arrayObject.Unbind();
}
