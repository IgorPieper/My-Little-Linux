#!/bin/bash

if [ $# -eq 3 ]
then
	if [ $1 -gt $2 ] && [ $1 -gt $3 ]
	then
		echo $1
	elif [ $2 -gt $1 ] && [ $2 -gt $3 ]
	then
		echo $2
	elif [ $3 -gt $2 ] && [ $3 -gt $2 ]
	then
		echo $3
	elif [ $1 -eq $2 ] && [ $1 -ne $3 ]
	then
		echo $1
	elif [ $1 -ne $2 ] && [ $1 -eq $3 ]
	then
		echo $1
	elif [ $2 -eq $3 ] && [ $2 -ne $1 ]
	then
		echo $2
	elif [ $1 -eq $2 ] && [ $1 -eq $3 ]
	then
		echo $1
	fi
else
	echo ERROR
fi

