#!/bin/bash

if [ $# -eq 4 ]
then
	egrep '\s[ '$1$2$3' ]\s' komputery.txt | head -n $4
else
	echo Proszę podać 4 argumenty
fi

