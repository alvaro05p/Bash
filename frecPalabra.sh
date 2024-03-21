#!/bin/bash
clear

read -p "Dime el nombre del archivo: " archivo


if [ -f $archivo ]; then

    tr ' ' '\n' < $archivo | sort | uniq -c | sort -nr

else 

    echo "Archivo no encontrado"

fi