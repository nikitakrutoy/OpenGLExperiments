//
// Created by Nikita Krutoy on 21.03.2021.
//


#ifndef TESTOPENGLPROJECT_ARRAYBUFFER_H
#define TESTOPENGLPROJECT_ARRAYBUFFER_H

#include <vector>
#include "Vertex.h"

class ArrayBuffer {
private:
    unsigned int id;
public:
    ArrayBuffer(const void* data, unsigned int size);
    explicit ArrayBuffer(std::vector<Vertex> verts);
    ~ArrayBuffer();

    void Bind();
    void Unbind();
};

#endif //TESTOPENGLPROJECT_ARRAYBUFFER_H


