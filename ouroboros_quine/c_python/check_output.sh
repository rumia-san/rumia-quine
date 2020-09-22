#!/usr/bin/env bash

mkdir -p output

gcc quine.c -Wall -o ./quine_c
./quine_c > ./output/quine.py
if [[ $(diff ./quine.py ./output/quine.py) ]]; then
    echo "ERROR! Output of quine.c is different from quine.py!"
else
    echo "GREAT! Output of quine.c is the same as quine.py!"
fi

python ./quine.py > ./output/quine.c
if [[ $(diff ./quine.c ./output/quine.c) ]]; then
    echo "ERROR! Output of quine.py is different from quine.c!"
else
    echo "GREAT! Output of quine.py is the same as quine.c!"
fi

echo "Here are the sha1 sums:"
sha1sum ./quine.c ./output/quine.c
sha1sum ./quine.py ./output/quine.py

