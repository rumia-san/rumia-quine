# rumia-quine
My simple quine programs : )

## Ouroboros Quine
I have implemented Ouroboros quine using C++ and Python.
The C++ program `quine.cpp` will output the python program `quine.py`,
while the python program `quine.py` will output the C++ program `quine.cpp`.
Run the script `check_output.sh` to verify~

```
$ cd ouroboros_quine
$ ./check_output.sh 
GREAT! Output of quine.cpp is the same as quine.py!
GREAT! Output of quine.py is the same as quine.cpp!
Here are the sha1 sums:
c7d639f373c975a7d96ec9a7e1bf79be2519c4af  ./quine.cpp
c7d639f373c975a7d96ec9a7e1bf79be2519c4af  ./output/quine.cpp
9e2a26fdb8c2110a61b93f055a4ca0186084c87a  ./quine.py
9e2a26fdb8c2110a61b93f055a4ca0186084c87a  ./output/quine.py
```

