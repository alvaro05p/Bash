#!/bin/bash

primera_linea=true

while IFS=, read -r usuario contrasena grupo ; do

    if [ "$primera_linea" = true ]; then
        primera_linea=false
        continue
    fi

    sudo useradd -m -p "$(openssl passwd -1 "$contrasena")" -g "$grupo" "$usuario"


done < creaUsuarios.csv