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


mkdir -p output

echo -e "\n======================================\n"
color_echo 3 "Checking str_replace.cpp"
g++ str_replace.cpp -Wall -std=c++11 -o ./str_replace
./str_replace > ./output/str_replace.cpp
compare_file "./str_replace.cpp" "./output/str_replace.cpp"

echo -e "\n======================================\n"
color_echo 3 "Checking eval.rb"
ruby eval.rb > ./output/eval.rb
compare_file "./eval.rb" "./output/eval.rb"

