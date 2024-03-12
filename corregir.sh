#!/bin/bash

usuarios=$(cat /etc/passwd | cut -d : -f 1)

for i in $usuarios

	do

		if  who | grep -q $i ; then

			echo "$i SI esta conectado"

		else

			echo "$i NO esta conectado"

		fi

done
