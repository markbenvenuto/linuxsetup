#!/bin/bash
set -x

#echo ARGS $*

ninja_file=$1
file_name=$1
#echo FILE $file_name

BASE_COMMAND="ninja -f linux-clang-local.ninja -j 500 -k 0"
#BASE_COMMAND="ninja -f linux-gcc-local.ninja -j 500 -k 0"
#BASE_COMMAND="ninja -f linux-clang-dynamic-toolchain.ninja -j 500 -k 0"

#BASE_COMMAND="ninja -f linux-gcc-opt-toolchain.ninja  -j 500 -k 0"

#BASE_COMMAND="ninja -f linux-gcc-opt-dyn-toolchain.ninja  -j 500 -k 0"



if [[ "$file_name" =~ .*_test.*.cpp ]]; then
    TEST_NAME=$(echo $file_name | sed "s#.*\/\(.*\).cpp#\1#")
    $BASE_COMMAND +$TEST_NAME
else
    $BASE_COMMAND core
fi
