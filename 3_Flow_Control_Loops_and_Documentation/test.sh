#!/bin/bash

# Juanjuan Xia #


# Test for existence of a file
if [ -f "hwtest" ]; then
	echo "the file name is: " hwtest
fi


# Check if a particular directory exists.ls
if [ -d "DIRECTORY" ]; then
	echo "the directory exists."
else
	mkdir DIRECTORY
fi


# Use if/elif statement to test input from the user
echo -n "Task IF-ELSE, Enter a number > "
read character
if [ $character -ge 0 ] && [ $character -lt 9 ]; then
	echo "The input is a number between 0 and 9."
elif [ $character -ge 50 ] && [ $character -lt 100 ]; then
	echo "The input is a number between 50 and 100."
elif [ $character -ge 500 ]; then
	echo "The input is a number > 500."
else
	echo "The input not belong the following values:"
	echo "number < 10, number between 50 and 100, number > 500."
fi


# Use switch statement to test input for the user
echo -n "Task CASE, Enter a number > "
read character
case $character in
[0-9] ) echo "The input is a number between 0 and 9."
	;;
[1-4][0-9] ) echo "The input is between 10 and 49, not what we wanted."
	;;
[5-9][0-9] ) echo "The input is a numbwe between 50 and 99."
	;;
[1-4][0-9][0-9] ) echo "The input is between 100 and 499, not what we wanted."
	;;
* ) echo "The input is a number >= 500."
esac


# Iterate through all the files in the current directory
for element in ./*;
do
	if [ -f $element ]; then
		echo "$element is a File."
	elif [ -d $element ]; then
		echo "$element is a Directory."
	fi
done


# A for loop which starts at 7
for iter_number in {7..37..3}
do
	echo $iter_number
done


# A until loop
number=0
until [ $number -ge 10 ]; do
	echo "(Until loop) Enter a number:"
	read character
	number=$character
done


# A while loop
character=no
while [ $character != yes ]; do
	echo "Do you like BASH?"
	read character
	character=$character
done











 
