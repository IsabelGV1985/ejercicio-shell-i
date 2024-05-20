#!/bin/bash

read -p "Introduce tu día de nacimiento (DD): " d_int
read -p "Introduce tu mes de nacimiento (MM): " m_int
read -p "Introduce año de nacimiento (AAAA): " a_int

echo "Fecha de nacimiento: $d_int-$m_int-$a_int"

d_act=$(date +%d)
m_act=$(date +%m)
a_act=$(date +%Y)

echo "Fecha actual: $d_act-$m_act-$a_act"

let edad=$a_act-$a_int

if [ $m_act -lt $m_int ] || { [ $m_act -eq $m_int ] && [ $d_act -lt $d_int ]; }; then
    edad=$((edad - 1))
fi

echo "Tienes $edad años."