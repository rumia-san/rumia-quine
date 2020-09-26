#!/usr/bin/env bash

cd $(dirname "$0")
source ../check_script_utils.sh

function check_normal_quine() {
    echo_horizontal_line
    color_echo 3 "Checking $1"
    mkdir -p output
    case "$1" in
    *.cpp )
        cpp_exec "$1" "./output/$1"
        ;;
    *.c )
        c_exec "$1" "./output/$1"
        ;;
    *.rb )
        interpret_exec "ruby" "$1" "./output/$1"
        ;;
    esac
    compare_file "$1" "./output/$1"
}

check_normal_quine "str_replace.cpp"
check_normal_quine "eval.rb"
check_normal_quine "str_format.rb"

