//
// Created by Nikita Krutoy on 21.03.2021.
//

#include "ArrayBuffer.h"
#include <GL/glew.h>

ArrayBuffer::ArrayBuffer(const void* data, unsigned int size) {
    glGenBuffers(1, &id);
    glBindBuffer(GL_ARRAY_BUFFER, id);
    glBufferData(GL_ARRAY_BUFFER, size, data, GL_STATIC_DRAW);
}

ArrayBuffer::~ArrayBuffer() {
    glDeleteBuffers(1, &id);
}

void ArrayBuffer::Bind() {
    glBindBuffer(GL_ARRAY_BUFFER, id);
}

void ArrayBuffer::Unbind() {
    glBindBuffer(GL_ARRAY_BUFFER, 0);
}

ArrayBuffer::ArrayBuffer(std::vector<Vertex> verts) {
    glGenBuffers(1, &id);
    glBindBuffer(GL_ARRAY_BUFFER, id);
    glBufferData(GL_ARRAY_BUFFER, verts.size(), verts.data(), GL_STATIC_DRAW);
}

