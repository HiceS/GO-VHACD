#include "Decomposer.h"

int main (){
    Decomposer decomp;
    return 0;
}

Decomposer::Decomposer(){
    bool loading = loader.LoadFile("v1.obj");
    cout << "Loading : " << "v1.obj" << endl;
    cout << loading << endl;
}

Decomposer::~Decomposer(){

}