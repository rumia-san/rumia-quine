#!/usr/bin/env bash

cd $(dirname "$0")
source ../check_script_utils.sh

mkdir -p output
interpret_exec "ruby" "./ascii_quine.rb" "./output/ascii_quine.rb"
compare_file "./ascii_quine.rb" "./output/ascii_quine.rb"