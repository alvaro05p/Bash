#!/bin/bash

#Este en un ejericicio que he hecho para estudiar:

	echo "Menu: "
	echo "1.Listar los archivos y directorios de donde estas"
	echo "2.Cuantos archivos y directorios hay aqui"
	echo "3.Calcular el tamaño total de bytes de todos los archivos"
	echo "4.Muestra los 5 archivos mas grandes"
	echo "5.Comprimir el directorio en zip"
	echo
	read -p "Opcion" opcion

case $opcion in

	1)
		ls
		;;
	2)
		ls -1 | wc -l
		;;
	3)
                ;;
        4)
                ;;
	5)
		;;

esac
