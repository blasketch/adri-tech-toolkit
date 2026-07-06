#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

USB="$1"

if [ -z "$USB" ]; then
    echo "Uso:"
    echo "  $0 /media/usuario/MULTIBOOT"
    exit 1
fi

echo "Instalando ADRI TECH TOOLKIT en $USB ..."

mkdir -p "$USB/ventoy/theme/backgrounds"
mkdir -p "$USB/ventoy/theme/fonts"
mkdir -p "$USB/ventoy/theme/icons"

cp "$PROJECT_DIR/config/ventoy.json" "$USB/ventoy/"
cp "$PROJECT_DIR/config/theme.txt" "$USB/ventoy/theme/"

echo "Configuración de Ventoy copiada."
echo ""
echo "Ahora sincroniza el resto con:"
echo "  $PROJECT_DIR/scripts/sync_usb.sh $USB"
