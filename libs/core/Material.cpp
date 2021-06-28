//
// Created by Nikita Krutoy on 17.06.2021.
//

#include "Material.h"

Material::Material() = default;;

void Material::SetShader(Shader* s) {
    shader = s;
}

void Material::SetTextures(std::vector<Texture> &t) {
    textures = t;
}

Shader *Material::GetShader() {
    return shader;
}

std::vector<Texture> Material::GetTextures() {
    return textures;
}
