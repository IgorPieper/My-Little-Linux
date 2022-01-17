#!/bin/bash

FILEX=$1

if [ ! -f "$FILEX" ]; then
	echo > ~/NOWE/"$FILEX"
else
	cat "$FILEX"

fi


