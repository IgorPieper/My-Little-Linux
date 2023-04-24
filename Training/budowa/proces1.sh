#!/bin/bash

# Pusta tablica do której będziemy dodawać ścieżki do materiałów
pliki=()

# Zmienna sprawdzająca ile plików już przerzuciliśmy
odliczanie=0

# Pętla, która wykona się jeden raz dla każdego pliku znajdującego się w katalogu "Pierwszy"
for file in "/home/igor/Desktop/budowa/Pierwszy"/*
do
	# Dodajemy Ściężki do plików do tablicy "Pliki"
	pliki+=($file)
	
	# Inkrementacja ilości plików
	let "odliczanie=odliczanie+1"
	
	#Przerzuca tylko 3 pliki
	if [ "$odliczanie" -ge 3 ]
	then
		break
	fi
done

# Pętla, która wykona się jeden raz dla każdego wpisu do tablicy "Pliki"
for answer in "${pliki[@]}"
do
	# Przenosimy wszystkie pliki z katalogu "Pierwszy" do katalogu "Bufor"
	mv $answer "/home/igor/Desktop/budowa/Bufor"
	sleep 2
done