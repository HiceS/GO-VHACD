#include "../inc/Decomposer.h"

int main (){
    Decomposer decomp("v3.obj");
    return 0;
}

Decomposer::Decomposer(string Path){
    loadMesh(Path);
}

Decomposer::~Decomposer(){
}

void Decomposer::loadMesh(string Path){
    bool loading = loader.LoadFile(Path);
    if (loading){

    }
}