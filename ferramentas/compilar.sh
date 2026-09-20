#!/usr/bin/env bash
# Compila os PDFs do Restauro de Passé (cartas + regras).
# Uso: ./ferramentas/compilar.sh   (a partir da raiz do projeto)
set -euo pipefail

cd "$(dirname "$0")/.."

echo "==> Compilando cartas/cartas.tex"
( cd cartas && pdflatex -interaction=nonstopmode -halt-on-error cartas.tex \
    && pdflatex -interaction=nonstopmode -halt-on-error cartas.tex )

echo "==> Compilando regras/regras.tex"
( cd regras && pdflatex -interaction=nonstopmode -halt-on-error regras.tex \
    && pdflatex -interaction=nonstopmode -halt-on-error regras.tex )

echo "==> Pronto:"
ls -la cartas/cartas.pdf regras/regras.pdf
