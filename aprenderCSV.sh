#!/bin/bash

echo "Gente de madrid ---------------------------------"
echo
while IFS= read -r linea; do

	#Tratamos la cabecera

	if [ $linea != "Nombre,Edad,Cidudad" ]; then

		ciudad=$(echo "$linea" | cut  -d "," -f3)

		if [ $ciudad = "Madrid" ]; then

			echo $linea

		fi

	fi

done < ejercicio.csv
echo
echo "Media de edad de la gente -----------------------"
echo
total=0
edad=0
cuantos=0

while IFS= read -r linea; do

        #Tratamos la cabecera

        if [ "$linea" != "Nombre,Edad,Ciudad" ]; then

                edad=$(echo $linea | cut  -d "," -f2)
                let total+=edad
		let cuantos+=1

        fi

done < ejercicio.csv

let media=total/cuantos

echo "La media de edad es $media"
