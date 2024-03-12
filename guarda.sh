#!/bin/bash

read -p "Usuario: " usuario

read -p "Directorio: " dir


if [ -d "/home/$usuario/$dir/Seguridad" ]; then


	echo "El directorio ya existe"

else

	cp -r . /home/$usuario/$dir/Seguridad

fi

