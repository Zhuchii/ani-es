#!/bin/bash

detect_package_manager() {
    if command -v apt-get &> /dev/null; then
        PKG_MANAGER="apt"
    elif command -v dnf &> /dev/null; then
        PKG_MANAGER="dnf"
    elif command -v yum &> /dev/null; then
        PKG_MANAGER="yum"
    elif command -v zypper &> /dev/null; then
        PKG_MANAGER="zypper"
    elif command -v pacman &> /dev/null; then
        PKG_MANAGER="pacman"
    else
        echo "Gestor de paquetes no soportado."
        exit 1
    fi
}

update_system() {
    case $PKG_MANAGER in
        apt)
            sudo apt-get update -y
            ;;
        dnf)
            sudo dnf makecache -y
            ;;
        yum)
            sudo yum makecache -y
            ;;
        zypper)
            sudo zypper refresh -y
            ;;
        pacman)
            sudo pacman -Sy --noconfirm
            ;;
    esac
}

install_package() {
    local package=$1

    case $PKG_MANAGER in
        apt)
            sudo apt-get install -y "$package"
            ;;
        dnf)
            sudo dnf install -y "$package"
            ;;
        yum)
            sudo yum install -y "$package"
            ;;
        zypper)
            sudo zypper install -y "$package"
            ;;
        pacman)
            sudo pacman -S --noconfirm "$package"
            ;;
    esac
}

detect_package_manager
update_system

install_package wget
install_package fzf
install_package grep
install_package sed
install_package python3
install_package mpv
install_package curl

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
