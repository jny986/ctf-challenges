#!/bin/bash

for d in */ ; do
    cd $d
    for i in * ; do
        echo "checking: $i"
        if [ -f $1 ]; then
            if [ $i == "install" ]; then
                echo "Installing $d"
                ./$i
                if [ -d "bin" ]; then
                    mv bin/* ../../bin/$d/
            fi
        fi
    done
    cd ..
done