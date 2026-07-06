# ADRI TECH TOOLKIT

USB multiboot profesional para técnicos de campo basado en [Ventoy](https://www.ventoy.net/).

## Estructura del USB

```
USB/
├── 00_ISOS/                  → ISOs bootables (Ventoy)
│   ├── Antivirus/            → Rescue disks (Kaspersky, Avira, etc.)
│   ├── Backup_Clone/         → Clonezilla, Macrium, etc.
│   ├── Diagnosticos/         → MemTest, HDD tools, SystemRescue, Hiren's
│   ├── Linux/                → Distribuciones Linux (Ubuntu, Mint, etc.)
│   └── Windows/              → Instaladores de Windows
├── 01_Drivers/               → Drivers por categoría
│   ├── Audio/
│   ├── Chipset/
│   ├── Graficos/
│   ├── Impresoras_Scanner/
│   ├── Lan_Wifi/
│   ├── Red/
│   ├── Storage/
│   └── USB_Webcam/
├── 02_Firmware/              → Actualizaciones de BIOS/UEFI/Router
├── 03_Portables/             → Software portable para Windows
│   ├── Administracion/
│   ├── Antivirus_Seguridad/
│   ├── Navegadores/
│   ├── Ofimatica_PDF/
│   ├── Redes_SSH/
│   └── Utilidades/
├── 04_Scripts/               → Scripts de automatización
│   ├── Bash_Linux/
│   ├── PowerShell/
│   └── Python/
├── 05_IT/                    → Documentación técnica
│   ├── Apuntes/
│   ├── Cheatsheets/
│   ├── Guias_Manuales/
│   └── Recursos/
├── 06_Utils/                 → Utilidades misceláneas
└── ventoy/                   → Configuración y theme de Ventoy
    ├── ventoy.json
    └── theme/
        ├── theme.txt
        ├── backgrounds/      → Fondos de pantalla (poner background.png aquí)
        ├── fonts/
        └── icons/
```

## Uso

### 1. Preparar el USB

Instala [Ventoy](https://www.ventoy.net/en/download.html) en el USB (esto formatea la unidad).

### 2. Copiar la configuración

```bash
# Sincronizar toda la estructura al USB
./scripts/sync_usb.sh /ruta/al/USB

# Ejemplo:
./scripts/sync_usb.sh /media/inelcom/MULTIBOOT
```

### 3. Personalizar

- Añade tus ISOs en `00_ISOS/`
- Añade drivers, portables, scripts...
- Pon tu fondo de pantalla como `ventoy/theme/backgrounds/background.png`
  (Recomendado: 1920x1080, PNG)

### 4. Verificar

```bash
./scripts/verify.sh
```

## Personalización del Theme

Edita `usb/ventoy/theme/theme.txt` para cambiar:
- `title-text`: El título que aparece en pantalla
- `desktop-image`: Ruta al fondo de pantalla
- Colores del menú

Los cambios se aplican al sincronizar con `sync_usb.sh`.
