#!/bin/bash

current_user=$(whoami)

if [ "$current_user" != "root" ]; then
  echo "No tiene acceso como root."
  exit 1
else
  echo "Acceso permitido."
fi