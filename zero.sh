#!/bin/bash
set -e

echo "===[ ZERO INIT ]==="
echo "[*] Updating package lists..."

apt update && apt upgrade -y

echo "[*] Installing base utilities..."

apt install -y \
  nano \
  htop \
  curl \
  wget \
  python3 \
  neofetch

echo "[+] Base tools installed."

# Мелкий штрих
echo "alias cls='clear'" >> ~/.bashrc
echo "neofetch" >> ~/.bashrc

echo "[✓] ZERO is ready. Welcome to nothingness."
