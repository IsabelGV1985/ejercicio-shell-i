#!/bin/bash

archivo=$1
totalCaracteres=$(wc -w < "$archivo")

echo "En el fichero" $archivo "existen" $totalCaracteres "parámetros."

# ejecucion en la terminal
# sh ejercicio-parametros-2.sh texto.txt