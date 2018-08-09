CXX			= em++
BUILD_DIR	= public/wasm/build
OUTPUT 		= $(BUILD_DIR)/index.js # JS File you want the glue code to be added to
CPP_FILE	= public/wasm/src/grid_functions.cpp
CXXFLAGS	= -Wall -Werror -pedantic-errors -O3
EMCC_FLAGS	= -s WASM=1 -s NO_EXIT_RUNTIME=1 -s EXTRA_EXPORTED_RUNTIME_METHODS='["ccall"]'
TARGET		= grid_functions

all: $(TARGET)
$(TARGET):
	$(CXX) -o $(OUTPUT) $(CPP_FILE) $(CXXFLAGS) $(EMCC_FLAGS)

clean:
	rm -fr $(BUILD_DIR)
