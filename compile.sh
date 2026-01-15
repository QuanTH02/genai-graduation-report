#!/bin/bash
# Script để compile LaTeX document

cd "$(dirname "$0")"

MAIN_FILE="DoAn.tex"
OUTPUT_DIR="."

echo "Đang compile LaTeX document: $MAIN_FILE"

# Compile với latexmk để tự động xử lý các lần compile cần thiết
latexmk -pdf -interaction=nonstopmode -file-line-error -outdir="$OUTPUT_DIR" "$MAIN_FILE"

if [ $? -eq 0 ]; then
    echo "✓ Compile thành công!"
    echo "PDF được tạo tại: ${MAIN_FILE%.tex}.pdf"
else
    echo "✗ Compile thất bại. Kiểm tra log file để biết lỗi."
    exit 1
fi
