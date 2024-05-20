#!/bin/bash

agregar_archivo() {
  read -p "Introduce el nombre del nuevo archivo: " nombre_archivo
  touch "$nombre_archivo"
  echo "Archivo '$nombre_archivo' creado con éxito."
}

mostrar_archivos() {
  echo "Lista de archivos:"
  ls
}

borrar_archivo() {
  read -p "Introduce el nombre del archivo a borrar: " nombre_archivo
  read -p "Introduce el formato del archivo a borrar: " formato_archivo
  archivo_completo="${nombre_archivo}.${formato_archivo}"
  
  if [[ -f "$archivo_completo" ]]; then
    rm "$archivo_completo"
    echo "Archivo '$archivo_completo' borrado."
  else
    echo "Archivo '$archivo_completo' no encontrado."
  fi
}

agregar_archivo

sleep 3

mostrar_archivos

read -p "¿Deseas borrar un archivo? (si/no): " respuesta
if [[ "$respuesta" == "si" || "$respuesta" == "SI" || "$respuesta" == "Si" || "$respuesta" == "sí" || "$respuesta" == "Sí" || "$respuesta" == "SÍ" ]]; then
  borrar_archivo
else
  echo "No se ha borrado ningún archivo."
fi