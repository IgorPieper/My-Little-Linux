#!/bin/bash

if (($#==1))
then
	case $1 in
	*.txt) cp *.txt /home/student/Downloads/copied;;
	*.sh) cp *.sh /home/student/Downloads/copied;;
	*.bin) cp *.bin /home/student/Downloads/copied;;
	*.h) cp *.h /home/student/Downloads/copied;;
	*) cp *.* /home/student/Downloads/copied;;
	esac
elif (($#>1))
then
	cp $@ /home/student/Downloads/copied
fi


