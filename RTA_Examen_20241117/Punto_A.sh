#!/bin/bash

# Definir los discos que vamos a utilizar
DISK1="/dev/sdc"    # Disco de 2 GB
DISK2="/dev/sdd"    # Disco de 1 GB

# Mensaje de inicio
echo "Iniciando la configuración de discos, particiones y volúmenes..."

# 1. Crear tabla de particiones en los discos
echo "Creando tablas de particiones en $DISK1 y $DISK2..."
sudo fdisk $DISK1 <<EOF
o      # Crear una tabla de particiones nueva (DOS)
n      # Crear una nueva partición
p      # Primaria
        # Aceptar el primer sector por defecto
        # Aceptar el tamaño máximo por defecto
t      # Cambiar el tipo de partición
8E     # Tipo LVM (Linux LVM)
w      # Escribir los cambios
EOF

sudo fdisk $DISK2 <<EOF
o      # Crear una tabla de particiones nueva (DOS)
n      # Crear una nueva partición
p      # Primaria
        # Aceptar el primer sector por defecto
        # Aceptar el tamaño máximo por defecto
t      # Cambiar el tipo de partición
82     # Tipo swap (Linux swap)
w      # Escribir los cambios
EOF

# 2. Crear volúmenes físicos (PV)
echo "Creando volúmenes físicos..."
sudo pvcreate $DISK1 $DISK2

# 3. Crear grupos de volúmenes (VG)
echo "Creando grupo de volúmenes vg_datos..."
sudo vgcreate vg_datos $DISK1

echo "Creando grupo de volúmenes vg_temp..."
sudo vgcreate vg_temp $DISK2

# 4. Crear volúmenes lógicos (LV)
echo "Creando volúmenes lógicos..."

# lv_docker: 5MB para Docker
sudo lvcreate -L 5M -n lv_docker vg_datos

# lv_workareas: 1.5GB para workareas
sudo lvcreate -L 1.5G -n lv_workareas vg_datos

# lv_swap: 512MB para swap
sudo lvcreate -L 512M -n lv_swap vg_temp

# 5. Formatear los volúmenes lógicos
echo "Formateando los volúmenes lógicos..."
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap

# 6. Crear directorios para montar los volúmenes
echo "Creando directorios de montaje..."
sudo mkdir -p /var/lib/docker
sudo mkdir -p /work

# 7. Montar los volúmenes
echo "Montando los volúmenes..."
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work
sudo swapon /dev/vg_temp/lv_swap

# 8. Actualizar fstab para montajes automáticos al reiniciar
echo "Actualizando /etc/fstab..."
echo "/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/vg_datos/lv_workareas /work ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/vg_temp/lv_swap swap swap defaults 0 0" | sudo tee -a /etc/fstab

# 9. Reiniciar el servicio de Docker
echo "Reiniciando Docker..."
sudo systemctl restart docker
sudo systemctl status docker

# Mensaje final
echo "Configuración completada con éxito."

~

