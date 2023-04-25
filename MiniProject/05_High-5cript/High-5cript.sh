#!/bin/bash

wynik=$(date +"%m_%d_%Y")

top -bn1 > log[$wynik].txt

