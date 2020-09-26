#!/usr/bin/env bash

cd $(dirname "$0")
source ../../check_script_utils.sh

mkdir -p output
c_exec "./quine.c" "./output/quine.py"
interpret_exec "python" "./quine.py" "./output/quine.c"
compare_file "./quine.c" "./output/quine.c"
compare_file "./quine.py" "./output/quine.py"


