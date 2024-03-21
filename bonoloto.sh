#!/bin/bash

clear
#Creamos array
numeros=()

for ((i=0; i<6; i++)); do
    aleat=$((RANDOM % 49 + 1))
    repetido=0

    for x in "${numeros[@]}"; do
        if [ "$x" -eq "$aleat" ]; then
            repetido=1
            
        fi
    done

    if [ "$repetido" -eq 0 ]; then
        numeros+=("$aleat")
    else
        ((i--))
    fi
done

ordenados=$(echo "${numeros[@]}" | tr ' ' '\n' | sort -n)

echo $ordenados