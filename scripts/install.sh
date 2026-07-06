#!/bin/bash

USB="$1"

if [ -z "$USB" ]; then
    echo "Uso:"
    echo "./install.sh /media/usuario/MULTIBOOT"
    exit 1
fi

echo "Instalando configuración..."

mkdir -p "$USB/ventoy/theme"

cp config/ventoy.json "$USB/ventoy/"
cp config/theme.txt "$USB/ventoy/theme/"

echo "Finalizado."
