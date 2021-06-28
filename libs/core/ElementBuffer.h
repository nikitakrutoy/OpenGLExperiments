//
// Created by Nikita Krutoy on 21.03.2021.
//


#ifndef TESTOPENGLPROJECT_ELEMENTBUFFER_H
#define TESTOPENGLPROJECT_ELEMENTBUFFER_H

#include <vector>

class ElementBuffer {
private:
    unsigned int id{};
public:
    ElementBuffer(const unsigned int* data, unsigned int size);
    explicit ElementBuffer(std::vector<unsigned int> indices);
    ~ElementBuffer();

    void Bind();
    void Unbind();
};

#endif //TESTOPENGLPROJECT_ELEMENTBUFFER_H


