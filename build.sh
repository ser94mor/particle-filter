#!/bin/bash
# Script to build all components from scratch, using the maximum available CPU power
#
# Given parameters are passed over to CMake.
# Examples:
#    * ./build.sh -DCMAKE_BUILD_TYPE=Debug
#    * ./build.sh VERBOSE=1
#
# Written by Tiffany Huang, 12/14/2016
# Modified by Sergey Morozov, 01/17/2018
#

# Fail on any error
set -e

# Go into the directory where this bash script is contained.
cd `dirname $0`

# Compile code.
mkdir -p build
cd build
cmake ..
make -j `nproc` $*
