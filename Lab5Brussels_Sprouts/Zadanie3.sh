#!/bin/bash

touch baza.txt

echo Imię	Nazwisko	Płeć	Wiek	> baza.txt

if (($#==4))
then
	echo $1 $2 $3 $4 >> baza.txt
elif (($#!=4))
then
	read t1 t2 t3 t4
	echo $t1 $t2 $t3 $t4 >> baza.txt
fi


