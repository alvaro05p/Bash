#!/bin/bash

read -p "Numero: " n

cont=1

for ((i = 1; i <= $n; i++)); do

	for ((i=1 ; i <= $cont; i++)); do

		echo -n $i
	done

	echo ""

	let "cont += 1"
done

