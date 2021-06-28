//
// Created by Nikita Krutoy on 20.12.2020.
//

#ifndef TESTOPENGLPROJECT_SHADER_H
#define TESTOPENGLPROJECT_SHADER_H


#include <string>
#include <fstream>
#include <sstream>
#include <iostream>
#include <GL/glew.h>


class Shader
{
public:
    // the program ID
    unsigned int ID{};
    bool isLoaded;

    Shader();

    // constructor reads and builds the shader
    Shader(const char* vertexPath, const char* fragmentPath);

    ~Shader();
    // use/activate the shader
    void use();

    void readShader(const char* vertexPath, const char* fragmentPath,
                    const char** vertexSource, const char** fragmentSource);

    void compileShader(const char* vertexSource, const char* fragmentSource);

    // utility uniform functions
    void setBool(const std::string &name, bool value) const;
    void setInt(const std::string &name, int value) const;
    void setFloat(const std::string &name, float value) const;
private:
    const char *vShaderCode{};
    const char *fShaderCode{};
};

#endif //TESTOPENGLPROJECT_SHADER_H
