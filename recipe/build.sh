
mkdir build
cd build

cmake \
    ${CMAKE_ARGS} \
    -G "Ninja" \
    -D UPDATE_DEPS=ON \
    -DCMAKE_INSTALL_PREFIX=${PREFIX} \
    -DCMAKE_BUILD_TYPE=Release \
    ${SRC_DIR}

cmake --build . --config Release
cmake --build . --config Release --target install
