#!/bin/bash

read -p "Introduce el primer número (n1): " n1
read -p "Introduce el segundo número (n2): " n2

if [ "$n1" -eq "$n2" ]; then
  echo "Los números son iguales"
elif [ "$n1" -gt "$n2" ]; then
  echo "n1 es mayor que n2"
else
  echo "n2 es mayor que n1"
fi