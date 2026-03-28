#!/bin/bash
set -e

DESTINO="$HOME/.claude/skills/mis-skills"
ORIGEN="$(cd "$(dirname "$0")" && pwd)"

echo "🧠 Instalando skills personalizados para Claude Code..."
echo ""

mkdir -p "$HOME/.claude/skills"

if [ -d "$DESTINO" ]; then
    echo "⚠️  Ya existe una instalación en $DESTINO"
    read -p "¿Sobreescribir? (s/n): " respuesta
    if [ "$respuesta" != "s" ]; then
        echo "Cancelado."
        exit 0
    fi
    rm -rf "$DESTINO"
fi

cp -r "$ORIGEN" "$DESTINO"
rm -rf "$DESTINO/.git" 2>/dev/null || true

echo ""
echo "✅ Skills instalados en: $DESTINO"
echo ""
echo "🚀 ¡Listo! Abre Claude Code y prueba: /plan-ceo-review"
