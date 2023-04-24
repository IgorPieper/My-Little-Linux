#!/bin/bash

# Sprawdza ile mamy plików w katalogu "Pierwszy"
ile=$(ls "/home/igor/Desktop/budowa/Pierwszy" | wc -l)

# Sprawdza ile obrotów będzie musiał wykonać program, aby przenieść wszystkie pliki (Bufor mieście tylko 3 pliki)
let "ile=ile/3"

clear

# Pętla wykona się dokładnie tyle razy ile jest potrzebne aby przenieść wszystkie pliki
for (( i=-1; i<$ile; i++ )) do

	echo "Pierwszy Proces rozpoczyna działanie"
	
	./proces1.sh
	
	echo "Pierwszy Proces zakończył działanie"
	echo "Drugi Proces rozpoczyna działanie"
	
	./proces2.sh
	echo "Drugi Proces zakończył działanie"
done

clear
ile=$(ls "/home/igor/Desktop/budowa/Drugi" | wc -l)
echo "O tyle plików przeniosłem: $ile"