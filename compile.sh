#!/bin/bash
# Script để compile LaTeX document

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

LATEX_DIR="latex"
MAIN_FILE="DoAn.tex"
OUTPUT_DIR="."

echo "Đang compile LaTeX document: $LATEX_DIR/$MAIN_FILE"

# Compile với latexmk, chạy từ trong thư mục latex nhưng output ra ngoài
cd "$LATEX_DIR"
latexmk -pdf -interaction=nonstopmode -file-line-error -outdir="../$OUTPUT_DIR" "$MAIN_FILE"
COMPILE_STATUS=$?
cd "$SCRIPT_DIR"

if [ $COMPILE_STATUS -eq 0 ]; then
    echo "✓ Compile thành công!"
    echo "PDF được tạo tại: ${MAIN_FILE%.tex}.pdf"
else
    echo "✗ Compile thất bại. Kiểm tra log file để biết lỗi."
    exit 1
fi
