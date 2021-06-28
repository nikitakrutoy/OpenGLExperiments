//
// Created by Nikita Krutoy on 17.06.2021.
//

#include "Engine.h"

int Engine::InitWindow() {
    return Window::Init();
}

void Engine::Render(Scene scene) {

    while(!glfwWindowShouldClose(Window::window))
    {

        glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        for (Model& model : scene.models) {
            model.Draw(scene.camera);
        }

        glfwSwapBuffers(Window::window);
        glfwPollEvents();
    }
}

