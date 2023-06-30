mkdir build
cd build
cmake .. -DCMAKE_PREFIX_PATH=../../usr/ -DCMAKE_INSTALL_PREFIX=../../usr/ -G "MinGW Makefiles"
cmake --build .
cmake --install .
cd ..

echo Done

