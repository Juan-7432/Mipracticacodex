#!/usr/bin/env bash
set -euo pipefail

# Script base de ejecución para la actividad.
# Objetivo: ayudar a verificar que existe un archivo principal en src/
# y mostrar guía simple de ejecución sin instalar dependencias.

echo "[INFO] Iniciando verificación básica del proyecto..."

if [[ ! -d "src" ]]; then
  echo "[ERROR] No existe el directorio src/."
  exit 1
fi

main_file=""
for candidate in src/main.py src/main.c src/main.sh src/main.s; do
  if [[ -f "$candidate" ]]; then
    main_file="$candidate"
    break
  fi
done

if [[ -z "$main_file" ]]; then
  echo "[ERROR] No se encontró archivo principal en src/."
  echo "[SUGERENCIA] Crea uno de estos archivos:"
  echo "  - src/main.py"
  echo "  - src/main.c"
  echo "  - src/main.sh"
  echo "  - src/main.s"
  exit 1
fi

echo "[OK] Archivo principal detectado: $main_file"

echo "[INFO] Guía rápida (adáptala a tu lenguaje):"
case "$main_file" in
  src/main.py)
    echo "  python3 src/main.py"
    ;;
  src/main.c)
    echo "  gcc -Wall -Wextra -o main src/main.c && ./main"
    ;;
  src/main.sh)
    echo "  chmod +x src/main.sh && ./src/main.sh"
    ;;
  src/main.s)
    echo "  # Ajusta comandos según tu entorno ARM64 y ensamblador"
    echo "  # Ejemplo referencial: as -o main.o src/main.s && ld -o main main.o && ./main"
    ;;
esac

echo "[INFO] Verificación terminada."
