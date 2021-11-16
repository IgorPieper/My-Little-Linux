#!/bin/bash

for pomocnicza in $(find / -type f -name "*.txt")
do
	echo $pomocnicza >> poloczone.txt
done
