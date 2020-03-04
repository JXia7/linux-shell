#!/bin/bash

dir="."

if [ "$#" -eq 1 ]; then
    dir=$1
elif [ "$#" -ge 2 ]; then
	echo "Parameters should be no more than 1!"
	exit 1
fi

param=$(ls "$dir")
./script1.sh -d dirs.out -f files.out $param
