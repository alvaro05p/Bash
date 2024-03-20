#!/bin/bash

read -p "Fichero al que contarle las palabras: " fich

cuenta=$(wc -w $fich | cut -d " " -f 1)

echo "Se han contado $cuenta palabras"