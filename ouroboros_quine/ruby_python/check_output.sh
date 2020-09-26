#!/usr/bin/env bash

cd $(dirname "$0")
source ../../check_script_utils.sh

mkdir -p output
interpret_exec "ruby" "quine.rb" "./output/quine.py"
interpret_exec "python" "quine.py" "./output/quine.rb"
compare_file "quine.rb" "./output/quine.rb"
compare_file "quine.py" "./output/quine.py"

