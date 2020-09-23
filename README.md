# rumia-quine
My simple quine programs : )

Including normal quines and Ouroboros quines

## Normal Quine
I have implemented normal quine using different langages.

Normal Quines will print its own source code.

You could run the script `./normal_quine/check_output.sh` to verify.

### C++ quine
The C++ quine program `./normal_quine/str_replace.cpp` is implemented using std::string::replace.

### Ruby quine
1. `./normal_quine/eval.rb` is implemented using eval.
2. `./normal_quine/str_format.rb` is implemented using ruby string format.

## Ouroboros Quine
I have implemented Ouroboros quine using different langages as well.

Ouroboros Quines will print another source code written in different language, 
which will print another source code as well. 
Eventually, the original source code of first program will be printed.

### C -> Python -> C

The C and Python Ouroboros quine is under folder `./ouroboros_quine/c_python/`

The C program `quine.c` will output the python program `quine.py`,
while the python program `quine.py` will output the C program `quine.c`.
Run the script `check_output.sh` to verify~

```
$ cd ouroboros_quine/c_python/
$ ./check_output.sh 
GREAT! Output of quine.c is the same as quine.py!
GREAT! Output of quine.py is the same as quine.c!
Here are the sha1 sums:
3ea1af46a1dba3621d7d201447cb251cf2061eaa  ./quine.c
3ea1af46a1dba3621d7d201447cb251cf2061eaa  ./output/quine.c
e7af8265a81cd7af94cdfbe2b863c54578c0ab44  ./quine.py
e7af8265a81cd7af94cdfbe2b863c54578c0ab44  ./output/quine.py
```

