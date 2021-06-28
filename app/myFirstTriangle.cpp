#define GL_SILENCE_DEPRECATION
#include <iostream>
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <fstream>
#include <cmath>

void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    glViewport(0, 0, width, height);
}

void processInput(GLFWwindow *window)
{
    if(glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
        glfwSetWindowShouldClose(window, true);
}

// Define vertex shader
const char *vertexShaderSource = "#version 330 core\n"
                                 "layout (location = 0) in vec3 aPos;\n"
                                 "void main()\n"
                                 "{\n"
                                 "   gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);\n"
                                 "}\0";

// Define fragment shader
const char *fragmentShaderSource = "#version 330 core\n"
                                   "out vec4 FragColor;\n"
                                   "void main()\n"
                                   "{FragColor = vec4(1.0f, 0.5f, 0.2f, 1.0f);}\n\0";

char* loadShader(char const *filePath) {
    std::ifstream in(filePath);
    std::string contents((std::istreambuf_iterator<char>(in)),
                         std::istreambuf_iterator<char>());
    char* ch = new char[contents.size()];
    strcpy(ch, contents.data());
    return ch;
}

int main() {
    // start GL context and O/S window using the GLFW helper library
    if (!glfwInit ())
    {
        std::cerr<<"ERROR: could not start GLFW3"<<std::endl;
        return 1;
    }

    //Setting window properties
    glfwWindowHint (GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint (GLFW_CONTEXT_VERSION_MINOR, 1);
    glfwWindowHint (GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);


    //Actually create the window
    GLFWwindow* window = glfwCreateWindow(800, 600, "LearnOpenGL", NULL, NULL);
    if (window == NULL)
    {
        std::cout << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);
    glViewport(0   , 0, 800, 600);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

    // get OpenGL info
    int nrAttributes;
    glGetIntegerv(GL_MAX_VERTEX_ATTRIBS, &nrAttributes);
    const GLubyte* renderer = glGetString (GL_RENDERER); // get renderer string
    const GLubyte* version = glGetString (GL_VERSION); // version as a string
    std::cout<<"Engine: "<<renderer<<std::endl;
    std::cout<<"OpenGL version supported "<<version<<std::endl;
    std::cout << "Maximum nr of vertex attributes supported: " << nrAttributes << std::endl;

    glewInit();
    unsigned int vertexShader;
    vertexShader = glCreateShader(GL_VERTEX_SHADER);

    // Compile vertex Shader
    glShaderSource(vertexShader, 1, &vertexShaderSource, NULL);
    glCompileShader(vertexShader);

    // Check if shader compiled without errors
    int  success;
    char infoLog[512];
    glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &success);

    if(!success)
    {
        glGetShaderInfoLog(vertexShader, 512, NULL, infoLog);
        std::cout << "ERROR::SHADER::VERTEX::COMPILATION_FAILED\n" << infoLog << std::endl;
    }

    unsigned int fragmentShader;
    fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);

    // Compile Fragment Shader
    glShaderSource(fragmentShader, 1, &fragmentShaderSource, NULL);
    glCompileShader(fragmentShader);

    // Check if shader compiled without errors
    glGetShaderiv(fragmentShader, GL_COMPILE_STATUS, &success);

    if(!success)
    {
        glGetShaderInfoLog(fragmentShader, 512, NULL, infoLog);
        std::cout << "ERROR::SHADER::FRAGMENT::COMPILATION_FAILED\n" << infoLog << std::endl;
    }


    unsigned int fragmentShaderOther;
    fragmentShaderOther = glCreateShader(GL_FRAGMENT_SHADER);

    char *fragmentShaderSourceOther;
    char const *fragmentShaderOtherFilePath = "/Users/nikitakrutoy/CLionProjects/TestOpenGLProject/shaders/shaderBlue.frag.glsl";
    fragmentShaderSourceOther = loadShader(fragmentShaderOtherFilePath);

    // Compile Fragment Shader
    glShaderSource(fragmentShaderOther, 1, &fragmentShaderSourceOther, NULL);
    glCompileShader(fragmentShaderOther);

    // Check if shader compiled without errors
    glGetShaderiv(fragmentShaderOther, GL_COMPILE_STATUS, &success);

    if(!success)
    {
        glGetShaderInfoLog(fragmentShaderOther, 512, NULL, infoLog);
        std::cout << "ERROR::SHADER::FRAGMENT::COMPILATION_FAILED\n" << infoLog << std::endl;
    }

    // Link fragment and vertex shader to shader program
    unsigned int shaderProgram;
    shaderProgram = glCreateProgram();

    glAttachShader(shaderProgram, vertexShader);
    glAttachShader(shaderProgram, fragmentShader);
    glLinkProgram(shaderProgram);


    // Check if shaders linked without errors
    glGetProgramiv(shaderProgram, GL_LINK_STATUS, &success);
    if(!success) {
        glGetProgramInfoLog(shaderProgram, 512, NULL, infoLog);
        std::cout << "ERROR::SHADER::PROGRAM::LINKING_FAILED\n" << infoLog << std::endl;
    }

    unsigned int shaderProgramOther;
    shaderProgramOther = glCreateProgram();

    glAttachShader(shaderProgramOther, vertexShader);
    glAttachShader(shaderProgramOther, fragmentShaderOther);
    glLinkProgram(shaderProgramOther);


    // Check if shaders linked without errors
    glGetProgramiv(shaderProgramOther, GL_LINK_STATUS, &success);
    if(!success) {
        glGetProgramInfoLog(shaderProgramOther, 512, NULL, infoLog);
        std::cout << "ERROR::SHADER::PROGRAM::LINKING_FAILED\n" << infoLog << std::endl;
    }

    glDeleteShader(vertexShader);
    glDeleteShader(fragmentShader);
    glDeleteShader(fragmentShaderOther);

    float vertices[] = {
            //first
            -0.5f, -0.5f, 0.0f,
            0.5f, -0.5f, 0.0f,
            0.0f,  0.5f, 0.0,
            //second
            -0.5f, 0.8f, 0.0f,
            0.5f, 0.8f, 0.0f,
            0.0f,  0.5f, 0.0,
    };

    float vertices_other[] = {
            // first triangle
            -0.9f, -0.5f, 0.0f,  // left
            -0.0f, -0.5f, 0.0f,  // right
            -0.45f, 0.5f, 0.0f,  // top
            // second triangle
            0.0f, -0.5f, 0.0f,  // left
            0.9f, -0.5f, 0.0f,  // right
            0.45f, 0.5f, 0.0f   // top
    };


    unsigned int VBO[2], VAO[2];
    glGenVertexArrays(2, VAO);
    glGenBuffers(2, VBO);
    glBindVertexArray(VAO[0]);

    glBindBuffer(GL_ARRAY_BUFFER, VBO[0]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);

    // note that this is allowed, the call to glVertexAttribPointer registered VBO as the vertex attribute's bound vertex buffer object so afterwards we can safely unbind
    glBindBuffer(GL_ARRAY_BUFFER, 0);

    // You can unbind the VAO afterwards so other VAO calls won't accidentally modify this VAO, but this rarely happens. Modifying other
    // VAOs requires a call to glBindVertexArray anyways so we generally don't unbind VAOs (nor VBOs) when it's not directly necessary.
    glBindVertexArray(0);


    glBindVertexArray(VAO[1]);

    glBindBuffer(GL_ARRAY_BUFFER, VBO[1]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices_other), vertices_other, GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);

    glBindBuffer(GL_ARRAY_BUFFER, 0);

    glBindVertexArray(0);

    while(!glfwWindowShouldClose(window))
    {
        processInput(window);

        glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        // draw our first triangle
        glUseProgram(shaderProgram);
        glBindVertexArray(VAO[0]); // seeing as we only have a single VAO there's no need to bind it every time, but we'll do so to keep things a bit more organized
        glDrawArrays(GL_TRIANGLES, 0, 6);


        float timeValue = glfwGetTime();
        float blueValue = (sin(timeValue * 10) + 1);
        int vertexColorLocation = glGetUniformLocation(shaderProgramOther, "ourColor");
        glUseProgram(shaderProgramOther);
        glUniform4f(vertexColorLocation, 0.0f, 0.0f, blueValue, 1.0f);
        glBindVertexArray(VAO[1]); // seeing as we only have a single VAO there's no need to bind it every time, but we'll do so to keep things a bit more organized
        glDrawArrays(GL_TRIANGLES, 0, 6);

        // glfw: swap buffers and poll IO events (keys pressed/released, mouse moved etc.)
        // -------------------------------------------------------------------------------
        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    // optional: de-allocate all resources once they've outlived their purpose:
    // ------------------------------------------------------------------------
    glDeleteVertexArrays(2, VAO);
    glDeleteBuffers(2, VBO);
    glDeleteProgram(shaderProgram);




    // close GL context and any other GLFW resources
    glfwTerminate();
    return 0;
}
