#define _CRT_SECURE_NO_WARNINGS
#include <algorithm>
#include <assert.h>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <sstream>
#include <stdio.h>
#include <string>
#include <vector>

#include "VHACD.h"
#include "OBJ_Loader.h"

using namespace std;
using namespace VHACD;
using namespace objl;

/**
 * @brief Decomposer class definition
 * 
 */
class Decomposer{
    public:
        Decomposer(string Path);
        ~Decomposer();

    private:
        IVHACD* ivhacd;

        /**
         * @brief Loader 
         *  OBJL - See README for Reference
         */
        Loader loader;
        void loadMesh(string Path);

};