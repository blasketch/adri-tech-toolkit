#!/bin/bash

USB="$1"

if [ -z "$USB" ]; then
    echo "Uso:"
    echo "  ./scripts/install.sh /media/usuario/MULTIBOOT"
    exit 1
fi

echo "Instalando ADRI TECH TOOLKIT en $USB ..."

mkdir -p "$USB/ventoy/theme/backgrounds"
mkdir -p "$USB/ventoy/theme/fonts"
mkdir -p "$USB/ventoy/theme/icons"

cp config/ventoy.json "$USB/ventoy/"
cp config/theme.txt "$USB/ventoy/theme/"

echo "Configuración de Ventoy copiada."
echo ""
echo "Ahora sincroniza el resto con:"
echo "  ./scripts/sync_usb.sh $USB"
