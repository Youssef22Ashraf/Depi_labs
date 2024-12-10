#!/bin/bash
#passing it as argument
x=5
./s2.bash $x

#passing it as argument when you call ./s1.bash 5
# x=$1
# ./s2.bash $x

####by export
export x
./s2.bash 