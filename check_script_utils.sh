#!/usr/bin/env bash

function color_echo() {
    #1 – Red; 2 – Green; 3 – Yellow
    tput setaf $1
    echo $2
    tput sgr0
}

function compare_file() {
    file1=$1
    file2=$2
    if [[ $(diff ${file1} ${file2}) ]]; then
        color_echo 1 "ERROR! ${file1} is different from ${file2}!"
    else
        color_echo 2 "GREAT! ${file1} is the same as ${file2}!"
    fi
    echo "Here are the SHA-1 sums"
    sha1sum ${file1} ${file2}
}

function interpret_exec() {
    interpreter=$1
    source=$2
    output=$3
    color_echo 3 "Executing ${interpreter} program ${source}"
    echo "Output will be redirect to ${output}"
    ${interpreter} ${source} > ${output}
}

function c_exec() {
    source=$1
    output=$2
    color_echo 3 "Executing C program ${source}"
    echo "Output will be redirect to ${output}"
    gcc -Wall ${source} -o ./a.out
    ./a.out > ${output}
    rm -f a.out
}

function cpp_exec() {
    source=$1
    output=$2
    color_echo 3 "Executing C++ program ${source}"
    echo "Output will be redirect to ${output}"
    g++ -Wall -std=c++11 ${source} -o ./a.out
    ./a.out > ${output}
    rm -f a.out
}

function echo_horizontal_line() {
    col=$(tput cols)
    ruby -e "${col}.times { print '='}"
    echo
}

