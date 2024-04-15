#!/bin/bash

clear

#Comprobamos si el imput del usuario se pasa de las lineas

yr=$(date | cut -d " " -f4)

let yr2=yr+1

read -p "Cuantos: " num

cat alumnos.csv | sort -t ";" -k6 -n -r | cut -d ";" -f2,3,4,6 | head -$num | tr ";" " " >  premiadosFP_$yr-$yr2.txt

