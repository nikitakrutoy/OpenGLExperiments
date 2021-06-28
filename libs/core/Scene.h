//
// Created by Nikita Krutoy on 17.06.2021.
//

#ifndef TESTOPENGLPROJECT_SCENE_H
#define TESTOPENGLPROJECT_SCENE_H


#include "Model.h"

struct Scene {
    std::vector<Model> models;
    Camera camera;
};


#endif //TESTOPENGLPROJECT_SCENE_H
