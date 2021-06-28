//
// Created by Nikita Krutoy on 28.06.2021.
//

#ifndef TESTOPENGLPROJECT_CAMERA_H
#define TESTOPENGLPROJECT_CAMERA_H
#include <glm/glm.hpp>

class Camera {
public:
    glm::vec3 cameraPos   = glm::vec3(0.0f, 0.0f,  3.0f);
    glm::vec3 cameraFront = glm::vec3(0.0f, 0.0f, -1.0f);
    glm::vec3 cameraUp    = glm::vec3(0.0f, 1.0f,  0.0f);

    glm::mat4 makeViewMatrix();
    glm::mat4 makeProjMatrix();

};


#endif //TESTOPENGLPROJECT_CAMERA_H
