//
// Created by Nikita Krutoy on 28.06.2021.
//

#include "Camera.h"
#include <glm/gtc/matrix_transform.hpp>

glm::mat4 Camera::makeViewMatrix() {
    return glm::lookAt(cameraPos, cameraPos + cameraFront, cameraUp);
}

glm::mat4 Camera::makeProjMatrix() {
    return glm::perspective(glm::radians(45.0f), 800.0f / 600.0f, 0.1f, 100.0f);
}
