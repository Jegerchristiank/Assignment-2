#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

latexmk -lualatex -interaction=nonstopmode -halt-on-error main.tex

# Always replace submission report by removing old file first.
perl -e 'unlink q{afleveringsfiler/Assignment2_report.pdf};'
install -m 644 main.pdf afleveringsfiler/Assignment2_report.pdf

latexmk -C main.tex
perl -e 'unlink q{main.bbl};'
