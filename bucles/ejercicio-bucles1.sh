#!/bin/bash

pid=$$

intentos=0

adivinar_pid() {
    while true; do
        read -p "Adivina el PID del script: " numero_ingresado
        intentos=$((intentos + 1))
        if (( numero_ingresado < pid )); then
            echo "El número ingresado es menor."
        elif (( numero_ingresado > pid )); then
            echo "El número ingresado es mayor."
        else
            echo "¡Correcto! Has adivinado el PID."
            echo "Número de intentos: $intentos"
            break
        fi
    done
}

adivinar_pid