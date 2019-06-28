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

using namespace std;
using namespace VHACD;

class Decomposer{
    public:
        Decomposer();
        ~Decomposer();

        bool LoadOBJ(const string&, vector<float>&, vector<int>&, IVHACD::IUserLogger&);

};