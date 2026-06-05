#!/usr/bin/env bash
# Proyecto IA Base - Instalador para Mac / Linux
# Uso:
#   curl -fsSL https://raw.githubusercontent.com/ivanlafuentepy/proyecto-ia-base/main/install.sh | bash

set -e

echo ""
echo "=== Proyecto IA Base - Instalador ==="
echo ""

# 1. Verificar Git
if ! command -v git >/dev/null 2>&1; then
    echo "Falta Git. Instalalo y volve a intentar."
    exit 1
fi

# 2. No pisar un proyecto existente
if [ -d ".claude" ]; then
    echo "Ya hay una carpeta .claude aca. Corre el instalador en una carpeta nueva o vacia."
    exit 1
fi

REPO="https://github.com/ivanlafuentepy/proyecto-ia-base.git"
TMP="$(mktemp -d)"

echo "Descargando plantilla..."
git clone --depth 1 "$REPO" "$TMP" >/dev/null 2>&1

echo "Copiando archivos a esta carpeta..."
cp -R "$TMP"/template/. .

rm -rf "$TMP"

echo "Inicializando git..."
git init -q
git add -A
git commit -q -m "Proyecto IA Base inicial"

echo ""
echo "Listo!"
echo "Abri esta carpeta en VS Code con la extension de Claude y escribi: /configurar"
echo ""
