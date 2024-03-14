#!/bin/bash

declare -A vehiculos

vehiculos[coche]="20"
vehiculos[furgoneta]="10"
vehiculos[bicicleta]="5"

read -p "Que vehiculo quiere alquilar? " vehiculo

echo "El vehiculo seleccionado tiene un precio de ${vehiculos[$vehiculo]} €/km"

