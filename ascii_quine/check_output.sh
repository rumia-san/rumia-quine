#!/usr/bin/env bash

cd $(dirname "$0")
source ../check_script_utils.sh

function check_ruby()
{
  interpret_exec "ruby" "$1" "$2"
  compare_file "$1" "$2"
}

mkdir -p output
check_ruby "./rumia_ascii.rb" "./output/rumia_ascii.rb"
check_ruby "./rumia_ascii2.rb" "./output/rumia_ascii2.rb"

interpret_exec "ruby" "cirno.rb" "./output/koishi.rb"
interpret_exec "ruby" "./output/koishi.rb" "./output/rumia.rb"
interpret_exec "ruby" "./output/rumia.rb" "./output/cirno.rb"
compare_file "cirno.rb" "./output/cirno.rb"
