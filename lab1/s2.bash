#!/bin/bash
s2_x=$1

if [ -n "$s2_x" ];
then
    echo "passed by arguments: $s2_x"
else
    echo "passed by export as env variable: $x"
fi
