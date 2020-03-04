#!/bin/sh

#set several variables
var1='this is var1'
var2='this is var2'
var3='this is var3'
var4='this is var4'
echo "set several variables"
echo $var1
echo $var2
echo $var3
echo $var4


#unset some of them
unset var1
unset var2
echo "unset var1 and var2"
echo "demonstrate that the variables have been unset"
echo $var1
echo $var2

#set a few constants
declare -r CONSTVAR1='this is CONSTVAR1'
declare -r CONSTVAR2='this is CONSTVAR2'
declare -r CONSTVAR3='this is CONSTVAR3'
declare -r CONSTVAR4='this is CONSTVAR4'
echo "set a few constants"
echo $CONSTVAR1
echo $CONSTVAR2
echo $CONSTVAR3
echo $CONSTVAR4

#change the value of the constant variable
echo "change the values of CONSTVAR1"
# CONSTVAR1='this is a changed CONSTVAR1'
# echo $CONSTVAR1

#unset constants
echo "unset constants of CONSTVAR1 and CONSTVAR2"
unset CONSTVAR1
unset CONSTVAR2
echo $CONSTVAR1
echo $CONSTVAR2





