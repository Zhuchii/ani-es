# ani-es 🎬

Watch anime from your terminal (Spanish subtitles) 🐧

Ver anime en español directamente desde la terminal

CLI tool powered by **mpv + fzf**

⚡ Fast | 🎯 No ads | 🖥️ Lightweight | ❤️ Open Source

⚡ Rápido | 🎯 Sin anuncios | 🖥️ Ligero | ❤️ Open Source

> Inspired by ani-cli, focused on Spanish content

---

**Search, stream and continue watching anime — all from your terminal.**

---

![Platforms](https://img.shields.io/badge/platform-Linux%20%7C%20Windows-blue)
![License](https://img.shields.io/github/license/Zhuchii/ani-es)
![Made with Bash](https://img.shields.io/badge/made%20with-bash-1f425f)
![Uses mpv](https://img.shields.io/badge/player-mpv-orange)
![Stars](https://img.shields.io/github/stars/Zhuchii/ani-es?style=social)

## 🚀 Demo

[demo](https://github.com/user-attachments/assets/8e6def8d-8698-4f2f-ae9e-b6ea1691b044)



---

## ✨ Features

* 🔍 Búsqueda de animes desde la terminal
* 📺 Reproducción directa con **mpv**
* ⏭️ Navegación entre episodios (siguiente / anterior)
* 💾 Guarda automáticamente el último episodio visto
* 🔄 Auto-actualización del script
* ⚡ Interfaz interactiva con **fzf**
* 🧠 Fallback automático para episodios en emisión
* 📦 Compatible con múltiples distribuciones Linux

---

## ⚡ Instalación

<details><summary>Windows (WSL)</summary>

Abre Powershell y pega esto
```bash
wsl --install -d Ubuntu
```
Luego desde la barra de tareas busca ubuntu y ejecuta

<img src="https://github.com/user-attachments/assets/067dfa4e-00b0-4681-ac07-c38508fa6bfe" width="600" />

Ya por ultimo solo queda instalar el script

```bash
git clone https://github.com/Zhuchii/ani-es.git
cd ani-es
chmod +x install.sh
./install.sh
```

Después podrás usar:

```bash
ani-es
```


### ⚠️ Nota sobre mpv
Para poder usar mpv has de instalar mpv de descargarte mpv desde su [pagina oficial](https://mpv.io/installation/) y añadirlo al PATH de windows
Si no sabes como hacerlo hecha un vistazo a [esta guia](https://github.com/Zhuchii/ani-es/wiki/C%C3%B3mo-descargar-y-a%C3%B1adir-mpv-al-PATH-en-Windows)

</details>

<details><summary>Linux</summary>

```bash
git clone https://github.com/Zhuchii/ani-es.git
cd ani-es
chmod +x install.sh
./install.sh
```

Después podrás usar:

```bash
ani-es
```

</details>

---

## 🖥️ Uso

```bash
ani-es
```

O directamente:

```bash
ani-es naruto
```

---

## 📦 Compatibilidad

Funciona en:

* Debian / Ubuntu
* Fedora / RHEL / CentOS
* Arch Linux
* openSUSE

Gestores soportados:

* `apt-get`
* `dnf`
* `yum`
* `pacman`
* `zypper`

---

## 🔧 Dependencias

* `python3`
* `mpv`
* `fzf`
* `wget`
* `curl`
* `jq`
* `grep`
* `sed`

El instalador se encarga de todo automáticamente.

---

## 💾 Historial

El script guarda automáticamente:

* Último anime visto
* Último episodio

Para que puedas continuar fácilmente después.

---

## ❌ Desinstalar

```bash
./uninstall.sh
```

---

## ⚠️ Nota

Este proyecto es solo una interfaz CLI para interactuar con sitios de streaming.
No aloja contenido propio.

---

## ❤️ Contribuir

Las contribuciones son bienvenidas:

* Reportar bugs
* Sugerir features
* Hacer pull requests

---

## ⭐ Apoya el proyecto

Si te gusta el proyecto, dale una estrella ⭐

Esto ayuda mucho a que más gente lo descubra 🙌

---
