#!/bin/bash

cont=1

for ((i = $1; i >= 1; i--)); do

	for((y = $i; y >= 1; y--)); do

		echo -n " "

	done

	for((x = 1; x <= $cont; x++)); do

                echo -n "*"

        done


	((cont+=2))

	echo

done

