#!/bin/bash

read -p "Introduce un número: " numero

if [ $(($numero % 2)) -eq 0 ]; then
  echo "El número $numero es divisible por 2."
else
  echo "El número $numero no es divisible por 2."
fi