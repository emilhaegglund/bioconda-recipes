#!/bin/bash

if [[ $(uname) == "Darwin" ]]; then
    echo "Configure for OSX"
    CXX="$(brew --prefix)/bin/g++-7" cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=. ..
else
    echo "Configure for Linux"
    cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=. ..
fi

make
make install

