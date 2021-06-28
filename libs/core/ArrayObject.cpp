//
// Created by Nikita Krutoy on 27.06.2021.
//

#include "ArrayObject.h"

ArrayObject::ArrayObject() {
    glGenVertexArrays(1, &_ID);
    glBindVertexArray(_ID);
}

ArrayObject::~ArrayObject() {
    glDeleteVertexArrays(1, &_ID);
}

void ArrayObject::Bind() {
    glBindVertexArray(_ID);
}

void ArrayObject::Unbind() {
    glBindVertexArray(0);
}