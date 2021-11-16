#!/bin/bash

licznik=1

while [ $licznik -le 10 ]
do
	echo obejście pętli numer: $licznik
	((licznik++))
done
