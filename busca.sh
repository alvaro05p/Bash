#!/bin/bash

buscado=$1

pass=$(cat /etc/passwd | cut -d ":" -f1)

for fichero in $pass
do

	if [ $fichero = $buscado ]; then

		echo "Existe"

	fi

done


