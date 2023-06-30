mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=../../usr/ -G "MinGW Makefiles"
cmake --build .
cmake --install .
cd ..

echo Done

cd ..
cd binary
build.bat