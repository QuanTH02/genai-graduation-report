#!/bin/bash
# Script để mở PDF preview và tự động reload khi có thay đổi

cd "$(dirname "$0")"

LATEX_DIR="latex"
MAIN_FILE="DoAn.tex"
PDF_FILE="${MAIN_FILE%.tex}.pdf"

# Compile lần đầu nếu chưa có PDF
if [ ! -f "$PDF_FILE" ]; then
    echo "PDF chưa tồn tại. Đang compile lần đầu..."
    ./compile.sh
fi

# Mở PDF viewer
if command -v evince &> /dev/null; then
    echo "Đang mở PDF viewer (Evince)..."
    evince "$PDF_FILE" 2>/dev/null &
    EVINCE_PID=$!
    echo "PDF viewer đã mở (PID: $EVINCE_PID)"
    echo ""
    echo "Để tự động compile và reload khi file thay đổi, chạy:"
    echo "  ./watch_and_compile.sh"
    echo ""
    echo "Hoặc chỉ compile một lần:"
    echo "  ./compile.sh"
else
    echo "Không tìm thấy PDF viewer. Vui lòng cài đặt evince hoặc mở file $PDF_FILE thủ công."
fi
