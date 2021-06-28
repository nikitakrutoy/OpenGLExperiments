//
// Created by Nikita Krutoy on 21.03.2021.
//

#include "ElementBuffer.h"
#include <GL/glew.h>

ElementBuffer::ElementBuffer(const unsigned int* data, unsigned int size) {
    glGenBuffers(1, &id);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, id);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, size, data, GL_STATIC_DRAW);
}

ElementBuffer::~ElementBuffer() {
    glDeleteBuffers(1, &id);
}

void ElementBuffer::Bind() {
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, id);
}

void ElementBuffer::Unbind() {
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
}

ElementBuffer::ElementBuffer(std::vector<unsigned int> indices) {
    glGenBuffers(1, &id);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, id);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size(), indices.data(), GL_STATIC_DRAW);
}


