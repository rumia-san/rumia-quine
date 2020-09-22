#!/usr/bin/env bash
function compare_file() {
    file1=$1
    file2=$2
    if [[ $(diff ${file1} ${file2}) ]]; then
        echo "ERROR! ${file1} is different from ${file2}!"
    else
        echo "GREAT! ${file1} is the same as ${file2}!"
    fi
    echo "Here are the SHA-1 sums"
    sha1sum ${file1} ${file2}
}


mkdir -p output

echo "Checking str_replace.cpp"
g++ str_replace.cpp -Wall -std=c++11 -o ./str_replace
./str_replace > ./output/str_replace.cpp
compare_file "./str_replace.cpp" "./output/str_replace.cpp"

