#!/bin/bash

typeset -i n1 
typeset -i n2
n1=1
n2=1
while [ $n1 -eq $n2 ]; do
    n2=$((n2 + 1)) # Increment n2
    echo "$n1"
    
    if [ $n1 -gt $n2 ]; then
        break
    else
        continue 
    fi
    n1=$n1+1
    echo "$n2"
done



#the output is 1
