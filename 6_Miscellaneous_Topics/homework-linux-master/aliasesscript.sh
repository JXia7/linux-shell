#!/bin/sh

#create several aliases
echo "create some aliases"

#1.use a variable
cwd='cd work/assignment1/'
alias cwd='$cwd'
cwd

#2.use a constant
declare -r const='cd work/'
alias const='$const'
const

#3.use both a variable and a constant






