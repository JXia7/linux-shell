#!/bin/sh

# enable or disable debugging
function debugging() {
	set +x
	set -x
}


# Create a 'cleanup' function
function cleanup() {
	TEMPFILE=temp.$$
	USER_INTERRUPT=13
	trap 'rm -f $TEMPFILE; exit $USER_INTERRUPT' TERM INT
	echo "you're cleaning things up"
}
cleanup

 
# Create a function that takes 3 parameters.
function myfunc() {
        local _resultvar1=$1
        local _resultvar2=$2
        local myresult1='the first value'
        local myresult2='the second value'
        eval $_resultvar1="'$myresult1'"
        eval $_resultvar2="'$myresult2'"
}
myfunc result1 result2
echo $result1 $result2


# Create a function that will output the extension of a file name
function extentionname() {
	filename="myfile.txt"
	echo ${filename##*.}
}
extentionname

# Create a function that will output the base name of a file name
function basename() {
	filename='log.txt'
	echo "$filename" | cut -f 1 -d '.'
}
basename
