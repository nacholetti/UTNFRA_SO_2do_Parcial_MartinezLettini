#!/bin/bash

# Verificar que se pasaron los parámetros correctamente
if [[ -z "$1" || -z "$2" ]]; then
  echo "Uso: $0 <usuario_de_referencia> <ruta_lista_usuarios>"
  exit 1
fi

# Parámetro 1: Usuario de referencia (del cual se obtiene la clave)
usuario_ref=$1

# Parámetro 2: Ruta al archivo Lista_Usuarios.txt
path_lista_usuarios=$2

# Ejecutar el script MartinezAltaUser-Groups.sh
echo "Ejecutando el script de creación de usuarios y grupos..."
sudo /usr/local/bin/MartinezAltaUser-Groups.sh "$usuario_ref" "$path_lista_usuarios"

# Verificación de la creación de usuarios y grupos
echo "Verificando los usuarios creados..."
grep -E "^($usuario_ref|Prog|Test|Supervisor)" /etc/passwd

echo "Verificando los grupos creados..."
cat /etc/group | grep -E "(desarrolladores|testers|supervisores)"

