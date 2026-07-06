#!/bin/bash

echo "========================================"
echo "  Verificando ADRI TECH TOOLKIT v2.0"
echo "========================================"
echo ""

BASE="usb"
ERRORS=0

check_dir() {
    if [ ! -d "$BASE/$1" ]; then
        echo "  ✗ FALTA: $BASE/$1"
        ERRORS=$((ERRORS + 1))
    else
        echo "  ✓ $BASE/$1"
    fi
}

check_dir "ventoy"
check_dir "ventoy/theme"
check_dir "ventoy/theme/backgrounds"
check_dir "ventoy/theme/fonts"
check_dir "ventoy/theme/icons"

check_dir "00_ISOS"
check_dir "00_ISOS/Antivirus"
check_dir "00_ISOS/Backup_Clone"
check_dir "00_ISOS/Diagnosticos"
check_dir "00_ISOS/Linux"
check_dir "00_ISOS/Windows"

check_dir "01_Drivers"
check_dir "01_Drivers/Audio"
check_dir "01_Drivers/Chipset"
check_dir "01_Drivers/Graficos"
check_dir "01_Drivers/Impresoras_Scanner"
check_dir "01_Drivers/Lan_Wifi"
check_dir "01_Drivers/Red"
check_dir "01_Drivers/Storage"
check_dir "01_Drivers/USB_Webcam"

check_dir "02_Firmware"

check_dir "03_Portables"
check_dir "03_Portables/Administracion"
check_dir "03_Portables/Antivirus_Seguridad"
check_dir "03_Portables/Navegadores"
check_dir "03_Portables/Ofimatica_PDF"
check_dir "03_Portables/Redes_SSH"
check_dir "03_Portables/Utilidades"

check_dir "04_Scripts"
check_dir "04_Scripts/Bash_Linux"
check_dir "04_Scripts/PowerShell"
check_dir "04_Scripts/Python"

check_dir "05_IT"
check_dir "05_IT/Apuntes"
check_dir "05_IT/Cheatsheets"
check_dir "05_IT/Guias_Manuales"
check_dir "05_IT/Recursos"

check_dir "06_Utils"

echo ""
if [ $ERRORS -eq 0 ]; then
    echo "✓ Estructura completa y correcta."
else
    echo "✗ $ERRORS error(es) encontrado(s)."
    exit 1
fi
