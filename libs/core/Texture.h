//
// Created by Nikita Krutoy on 17.06.2021.
//


#ifndef TESTOPENGLPROJECT_TEXTURE_H
#define TESTOPENGLPROJECT_TEXTURE_H

#include "string"

struct Texture {
    unsigned int id;
    std::string type;
    std::string path;  // we store the path of the texture to compare with other textures
};

#endif //TESTOPENGLPROJECT_TEXTURE_H
