#!/bin/bash

# Pusta tablica do której będziemy dodawać ścieżki do materiałów
pliki=()

# Pętla, która wykona się jeden raz dla każdego pliku znajdującego się w katalogu "Drugi"
for file in "/home/igor/Desktop/budowa/Drugi"/*
do
	# Dodajemy Ściężki do plików do tablicy "Pliki"
	pliki+=($file)
done

# Pętla, która wykona się jeden raz dla każdego wpisu do tablicy "Pliki"
for answer in "${pliki[@]}"
do
	# Przenosimy wszystkie pliki z katalogu "Drugi" do katalogu "Pierwszy"
	mv $answer "/home/igor/Desktop/budowa/Pierwszy"
done