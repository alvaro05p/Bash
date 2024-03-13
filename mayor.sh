#!/bin/bash

read -p "Primer numero: " n1
read -p "Segundo numero: " n2

if [ "$n1" -gt "$n2" ]; then

	echo "$n1 es mayor que $n2"

elif [ "$n1" -lt "$n2" ]; then

	echo "$n1 es menor que $n2"

else

	echo "Los numeros son iguales"

fi
