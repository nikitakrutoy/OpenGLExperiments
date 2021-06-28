//
// Created by Nikita Krutoy on 27.06.2021.
//
#pragma once

#include <GL/glew.h>

#ifndef TESTOPENGLPROJECT_ARRAYOBJECT_H
#define TESTOPENGLPROJECT_ARRAYOBJECT_H


class ArrayObject {
private:
    unsigned int _ID{};
public:
    ArrayObject();
    ~ArrayObject();

    void Bind();
    void Unbind();
};


#endif //TESTOPENGLPROJECT_ARRAYOBJECT_H
