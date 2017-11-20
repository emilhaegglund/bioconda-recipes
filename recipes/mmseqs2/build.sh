#!/bin/bash
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=. ..
make
make install
cp ../bin/mmseqs2 ${PREFIX}/bin/
