#!/bin/bash
TIMESTAMP=$(date +%Y%m%d)
PUNTO="A"

clear
echo "Se espera ver: "
echo "Discos de 1G y 2G"
echo "vg_Datos -> lv_docker=5MB"
echo "vg_Datos -> lv_workareas=1.5G"
echo "vg_temp  -> lv_swap"
echo 

echo "lsblk -f"
lsblk -f
echo
read -p "Presione una tecla para continuar" PAUSA
echo

echo "pvs - vgs - lvs "
sudo pvs
echo
sudo vgs
echo
sudo lvs
echo

echo "swap"
free -h 
swapon -s 

echo
echo "df -h"
df -h

echo
echo "cat $HOME/RTA_Examen_${TIMESTAMP}/Punto_${PUNTO}.sh"
echo
cat $HOME/RTA_Examen_${TIMESTAMP}/Punto_${PUNTO}.sh
echo "-------------------------------------------------------------"
echo
