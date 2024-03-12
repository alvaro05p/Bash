#!/bin/bash

echo "Los que SI ------------------------------------------------------------------------"
echo ""

lectura=$(find . -type f -exec ls -l {} + | grep -E "^-r..r..r...*alvaro" | wc -l)

echo $lectura ficheros con permiso de lectura

escritura=$(find . -type f -exec ls -l {} + | grep -E "^-.w..w..w..*alvaro" | wc -l)

echo $escritura ficheros con permisos de escritura

ejecucion=$(find . -type f -exec ls -l {} + | grep -E "^-..x..x..x.*alvaro" | wc -l)

echo $ejecucion fichero con permisos de ejcucion

echo""
echo "Los que NO ------------------------------------------------------------------------"
echo ""

lectura=$(find . -type f -exec ls -l {} + | grep -E "^--..-..-...*alvaro" | wc -l)

echo $lectura ficheros sin permiso de lectura

escritura=$(find . -type f -exec ls -l {} + | grep -E "^-.-..-..-..*alvaro" | wc -l)

echo $escritura ficheros sin permisos de escritura 

ejecucion=$(find . -type f -exec ls -l {} + | grep -E "^-..-..-..-.*alvaro" | wc -l)

echo $ejecucion fichero sin permisos de ejcucion


