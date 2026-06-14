#!/bin/bash


INSTALL_DIR="/usr/local/bin"

if [ ! -f "$INSTALL_DIR/ani-es" ]; then
    echo "El script ani-es no está instalado en el sistema."
    exit 1
fi

if [ ! -f "$INSTALL_DIR/excepciones.json" ]; then
    exit 1
fi

sudo rm "$INSTALL_DIR/ani-es"
sudo rm "$INSTALL_DIR/excepciones.json"
sudo rm -r ~/ani-es/history.db

echo "El script ani-es ha sido desinstalado correctamente."
