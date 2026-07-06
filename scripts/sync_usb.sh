#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

USB="$1"

if [ -z "$USB" ]; then
    echo "Uso:"
    echo "  $0 /media/inelcom/MULTIBOOT"
    exit 1
fi

if [ ! -d "$USB" ]; then
    echo "ERROR: $USB no existe"
    exit 1
fi

echo "Sincronizando ADRI TECH TOOLKIT → $USB ..."
rsync -avh --delete \
    --exclude='.gitkeep' \
    "$PROJECT_DIR/usb/" "$USB/"

echo ""
echo "✓ USB actualizado correctamente."
echo "No olvides copiar las ISOs y los Wallpapers en sus carpetas."
