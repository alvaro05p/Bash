#!/bin/bash
read -p "Numero: " n

for ((i = 1; i <= $n; i++)); do
	for ((x=1; x<=$i; x++)); do
		echo -n $i
	done
	echo ""
done

