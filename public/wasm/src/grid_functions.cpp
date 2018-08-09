#include <stdio.h>
#include <emscripten.h>

int main(int argc, char ** argv){

}

int add(int x, int y) {
    return x+y;
}

// Add extern "C" when compiling via C++
extern "C" { 
    int EMSCRIPTEN_KEEPALIVE myFunc(){
        return add(7,7);
    }
}

