//
// Created by Nikita Krutoy on 28.06.2021.
//

#ifndef TESTOPENGLPROJECT_WINDOW_H
#define TESTOPENGLPROJECT_WINDOW_H

#include <GL/glew.h>
#include <GLFW/glfw3.h>

class Window {
public:
    static GLFWwindow* window;
    static int Init();
};


#endif //TESTOPENGLPROJECT_WINDOW_H
