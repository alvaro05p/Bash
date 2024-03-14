#!/bin/bash

while [ true ]; do
	res=0
	read -p "Valor 1: " valor1
	read -p "Operacion: " operacion
	read -p "Valor 2: " valor2

	case $operacion in

		+)
			let res=valor1+valor2
		;;
		-)
			let res=valor1-valor2
		;;
		*)
			let res=valor1*valor2
		;;
		/)
			let res=valor1/valor2
		;;
	esac
	clear
	echo "$res"
done
