#!/bin/bash

# Pusta tablica do której będziemy dodawać ścieżki do materiałów
pliki=()

# Pętla, która wykona się jeden raz dla każdego pliku znajdującego się w katalogu "Bufor"
for file in "/home/igor/Desktop/budowa/Bufor"/*
do
	# Dodajemy Ściężki do plików do tablicy "Pliki"
	pliki+=($file)
done

# Pętla, która wykona się jeden raz dla każdego wpisu do tablicy "Pliki"
for answer in "${pliki[@]}"
do
	# Przenosimy wszystkie pliki z katalogu "Bufor" do katalogu "Drugi"
	mv $answer "/home/igor/Desktop/budowa/Drugi"
	sleep 2
done