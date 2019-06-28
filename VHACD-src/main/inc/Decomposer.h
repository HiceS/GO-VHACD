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

class Decomposer{
    public:
        Decomposer();
        ~Decomposer();

    private:
        IVHACD* ivhacd;

};