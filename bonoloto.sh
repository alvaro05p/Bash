#!/bin/bash

clear
#Creamos array
numeros=()

for ((i=0; i<6; i++)); do
    #Creamos el numero aleatorio
    aleat=$((RANDOM % 49 + 1))
    repetido=0

    #Recorremos el array
    for x in "${numeros[@]}"; do
        #Si el valor que tiene es igual a alguno del
        #array le decimos que no entre al siguiente if
        if [ "$x" -eq "$aleat" ]; then
            repetido=1
            echo "se repite el $x pero lo salvo"
        fi
    done
    #Si no le decimos que no entre añade el numero generado
    #al array
    if [ "$repetido" -eq 0 ]; then
        numeros+=("$aleat")
    else
    #Si no ha entrado a generarlo volvemos un paso
    #atrás en el proceso, para no tener menos numeros
    #de los que necesitamos
        ((i--))
    fi
done

#Ordenamos sustituyendo el espacio por un salto
#porque el sort solo ordena con saltos de linea
ordenados=$(echo "${numeros[@]}" | tr ' ' '\n' | sort -n)

echo $ordenados