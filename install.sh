#!/bin/bash


install_package() {
    local package=$1
    if command -v apt-get &> /dev/null; then
        sudo apt-get install -y "$package"
    elif command -v dnf &> /dev/null; then
        sudo dnf install -y "$package"
    elif command -v yum &> /dev/null; then
        sudo yum install -y "$package"
    elif command -v zypper &> /dev/null; then
        sudo zypper install -y "$package"
    elif command -v pacman &> /dev/null; then
        sudo pacman -S --noconfirm "$package"
    else
        echo "Gestor de paquetes no soportado. Instala manualmente: $package"
        exit 1
    fi
}


install_package wget
install_package fzf
install_package grep
install_package sed
install_package python3
install_package mpv

echo "Todas las dependencias han sido instaladas correctamente."

INSTALL_DIR="/usr/local/bin"
SCRIPT_PATH="$(pwd)/ani-es"
JSON_PATH="$(pwd)/excepciones.json"
mkdir -p ~/ani-es/
DATA_PATH="$(pwd)/history.db"

if [ -f "$INSTALL_DIR/ani-es" ]; then
    echo "El script ani-es ya existe en el PATH."
    exit 1
fi

if [ -f "$INSTALL_DIR/excepciones.json" ]; then
    exit 1
fi

if [ -f "$INSTALL_DIR/history.db" ]; then
    exit 1
fi

sudo cp "$SCRIPT_PATH" "$INSTALL_DIR"
sudo cp "$JSON_PATH" "$INSTALL_DIR"
if [ ! -f ~/ani-es/history.db ]; then
    sudo cp "$DATA_PATH" ~/ani-es/
    sudo chmod 777 ~/ani-es/history.db
else
    echo "El archivo history.db ya existe y no se ha sobrescrito."
fi
sudo chmod 777 ~/ani-es/history.db
echo ""
clear
echo "El script ani-es se ha instalado correctamente en el directorio $INSTALL_DIR."
echo "Ahora puedes ejecutar 'ani-es' en cualquier lugar del sistema."
