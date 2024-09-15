#!/bin/bash

check() {
	#will expect to only accept one arg
	num=$1

	#cuts non-numerical items
	num=`echo "$num" | sed s/[^0-9.]/""/g`

	if [ num != $1 ]; then #if this runs, then characters outside of previous pattern WERE taken out
		return 1
	fi

	return 0
}

while :
do
	echo "Please enter numbers to sort: 1, 2, 5.4, 3, 1.3"
	echo -en ">>> "
	read arguments

	for arg in arguments; do
		if [ `check arg` -ne 0 ]; then
			clear
			echo "* * * Improper format, please try again * * *"
			break
		
	done

	#if inner loop clears, all arguements are great
	./bubblesort.c -ansi -pedantic -o -out $arguments
	exit

done
