//
// Created by Nikita Krutoy on 27.06.2021.
//

#include "string"
#include "core/Model.h"
#include "core/Scene.h"
#include "core/Engine.h"



int main() {
    Engine engine = Engine();
    if (engine.InitWindow() != 0) return -1;
    std::string vShaderPath;
    std::string fShaderPath;
    std::string modelPath;

    Shader shader = Shader(vShaderPath.c_str(), fShaderPath.c_str());

    Model model = Model(modelPath.c_str());
    model.SetShader(shader);

    Scene scene;
    scene.models = std::vector<Model>{model};
    scene.camera = Camera();

    Engine().Render(scene);
}
    // start GL context and O/S window using the GLFW helper library
