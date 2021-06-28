
//
// Created by Nikita Krutoy on 17.06.2021.
//


#ifndef TESTOPENGLPROJECT_MATERIAL_H
#define TESTOPENGLPROJECT_MATERIAL_H

#include <climits>
#include <utility>
#include <vector>
#include "Shader.h"
#include "Texture.h"


class Material {
private:
    std::vector<Texture> textures;
    Shader* shader;
public:
    Material();
    Shader* GetShader();
    std::vector<Texture> GetTextures();
    void SetShader(Shader* shader);
    void SetTextures(std::vector<Texture>& textures);
};


#endif //TESTOPENGLPROJECT_MATERIAL_H
