#!/usr/bin/env bash

mkdir -p output

gcc quine.cpp -Wall -std=c++11 -o ./quine_cpp
./quine_cpp > ./output/quine.py
if [[ $(diff ./quine.py ./output/quine.py) ]]; then
    echo "ERROR! Output of quine.cpp is different from quine.py!"
else
    echo "GREAT! Output of quine.cpp is the same as quine.py!"
fi

python ./quine.py > ./output/quine.cpp
if [[ $(diff ./quine.cpp ./output/quine.cpp) ]]; then
    echo "ERROR! Output of quine.py is different from quine.cpp!"
else
    echo "GREAT! Output of quine.py is the same as quine.cpp!"
fi

echo "Here are the sha1 sums:"
sha1sum ./quine.cpp ./output/quine.cpp
sha1sum ./quine.py ./output/quine.py

