#!/bin/bash
set -e

echo "🎨 [zero-meta] Установка KDE + Papirus Icons (Debian-based)"

apt update && apt install -y \
    kde-plasma-desktop \
    sddm \
    papirus-icon-theme \
    dolphin \
    konsole

systemctl enable sddm

echo "✅ Установка завершена. Перезагрузи систему или запусти SDDM вручную: systemctl start sddm"
