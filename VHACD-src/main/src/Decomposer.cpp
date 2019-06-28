#include "Decomposer.h"
#include "oclHelper.h"

int main (){
    
    return 0;
}

Decomposer::Decomposer(){

}

Decomposer::~Decomposer(){

}

bool Decomposer::LoadOBJ(const string& fileName, vector<float>& points, vector<int>& triangles, IVHACD::IUserLogger& logger)
{
    const unsigned int BufferSize = 1024;
    FILE* fid = fopen(fileName.c_str(), "r");

    if (fid) {
        char buffer[BufferSize];
        int ip[4];
        float x[3];
        char* pch;
        char* str;
        while (!feof(fid)) {
            if (!fgets(buffer, BufferSize, fid)) {
                break;
            }
            else if (buffer[0] == 'v') {
                if (buffer[1] == ' ') {
                    str = buffer + 2;
                    for (int k = 0; k < 3; ++k) {
                        pch = strtok(str, " ");
                        if (pch)
                            x[k] = (float)atof(pch);
                        else {
                            return false;
                        }
                        str = NULL;
                    }
                    points.push_back(x[0]);
                    points.push_back(x[1]);
                    points.push_back(x[2]);
                }
            }
            else if (buffer[0] == 'f') {

                pch = str = buffer + 2;
                int k = 0;
                while (pch) {
                    pch = strtok(str, " ");
                    if (pch && *pch != '\n') {
                        ip[k++] = atoi(pch) - 1;
                    }
                    else {
                        break;
                    }
                    str = NULL;
                }
                if (k == 3) {
                    triangles.push_back(ip[0]);
                    triangles.push_back(ip[1]);
                    triangles.push_back(ip[2]);
                }
                else if (k == 4) {
                    triangles.push_back(ip[0]);
                    triangles.push_back(ip[1]);
                    triangles.push_back(ip[2]);

                    triangles.push_back(ip[0]);
                    triangles.push_back(ip[2]);
                    triangles.push_back(ip[3]);
                }
            }
        }
        fclose(fid);
    }
    else {
        logger.Log("File not found\n");
        return false;
    }
    return true;
}