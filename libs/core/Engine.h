//
// Created by Nikita Krutoy on 17.06.2021.
//

#ifndef TESTOPENGLPROJECT_ENGINE_H
#define TESTOPENGLPROJECT_ENGINE_H

#include "Window.h"
#include "Scene.h"

class Engine {
private:
    Window window;
public:
    int InitWindow();
    void Render(Scene scene);
};


#endif //TESTOPENGLPROJECT_ENGINE_H
