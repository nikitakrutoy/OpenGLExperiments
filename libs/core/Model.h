//
// Created by Nikita Krutoy on 17.06.2021.
//

#ifndef TESTOPENGLPROJECT_MODEL_H
#define TESTOPENGLPROJECT_MODEL_H


#include <string>
#include <vector>
#include <assimp/Importer.hpp>
#include <assimp/scene.h>
#include <assimp/postprocess.h>
#include "Mesh.h"
#include "Camera.h"

class Model
{
public:
    Model(const char *path)
    {
        loadModel(path);
    }
    void SetShader(Shader &shader);
    Shader* GetShader();
    void Draw(Camera camera);

    glm::vec3 Position;
    float Rotation;
    glm::vec3 Scale;

private:
    // model data
    Shader* shader;
    Material material;
    std::vector<Mesh> meshes;
    std::string directory;

    glm::mat4 makeModelMatrix() const;

    void loadModel(std::string path);
    void processNode(aiNode *node, const aiScene *scene);
    Mesh processMesh(aiMesh *mesh, const aiScene *scene);
    static Vertex processVertex(aiMesh *mesh, int i);
    std::vector<Texture> loadMaterialTextures(aiMaterial *mat, aiTextureType type,
                                         std::string typeName);
};


#endif //TESTOPENGLPROJECT_MODEL_H
