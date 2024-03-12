#!/bin/bash

nUsuarios=$(who | wc -l)

echo "Hay conectados " $nUsuarios "usuarios $(date)"

