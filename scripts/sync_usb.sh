#!/bin/bash

USB="$1"

if [ -z "$USB" ]; then
    echo "Uso:"
    echo "./sync_usb.sh /media/inelcom/MULTIBOOT"
    exit 1
fi

echo "Sincronizando..."

rsync -avh --delete usb/ "$USB/"

echo "USB actualizado."
