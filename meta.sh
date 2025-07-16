#!/bin/bash
set -e

echo "[zero-meta/meta] Установка имени дистрибутива"

# Перезаписываем /etc/os-release
cat > /etc/os-release <<EOF
NAME="Zero Meta Linux"
ID=zero-meta
PRETTY_NAME="Zero Meta Linux"
VERSION="1.0"
EOF

echo "[zero-meta/meta] Готово. Теперь система называется Zero Meta Linux."
