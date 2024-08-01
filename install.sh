#!/bin/bash


sudo apt-get install -y wget

sudo apt-get install -y fzf

sudo apt-get install -y grep

sudo apt-get install -y sed

sudo apt-get install -y python3

sudo apt-get install -y mpv

echo "Todas las dependencias han sido instaladas correctamente."

INSTALL_DIR="/usr/local/bin"

SCRIPT_PATH="$(pwd)/ani-es"
JSON_PATH="$(pwd)/excepciones.json"
mkdir ~/ani-es/
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
sudo cp "$DATA_PATH" ~/ani-es/
sudo chmod 777 ~/ani-es/history.db
echo ""
clear
echo "El script ani-es se ha instalado correctamente en el directorio $INSTALL_DIR."
echo "Ahora puedes ejecutar 'ani-es' en cualquier lugar del sistema."

