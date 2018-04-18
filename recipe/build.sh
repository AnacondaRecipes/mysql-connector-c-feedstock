#!/bin/bash

mkdir build
cd build

cmake  -G"$CMAKE_GENERATOR" \
       -DCMAKE_BUILD_TYPE=Release \
       -DCMAKE_PREFIX_PATH=$PREFIX \
       -DCMAKE_INSTALL_PREFIX=$PREFIX \
       ..

make VERBOSE=1 -j${CPU_COUNT}
make install

