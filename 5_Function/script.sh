#!/bin/bash

list_files() {
    if [ -d $1 ]; then
        tmp=$(pwd)
        cd $1
        echo *
        cd $tmp
    fi
}

list_file_size() {
   for var in "$@"
   do
       if [ -f $var ]; then
           stat $var
       fi
   done 
}

if [ $# -eq 1 ]; then
    list_files "$1"
fi

list_file_size "$@"
