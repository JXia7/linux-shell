#!/bin/sh

#use read to get input from a user in a loop
number=0
until [ $number -ge 2 ]; do
	echo "Enter a number:"
	read character
	number=$character
done

#use exec to redirect input from the file with the text in it
exec < file
read a1
read a2

echo
echo "Following lines read from file."
echo "-------------------------------"
echo $a1
echo $a2 

