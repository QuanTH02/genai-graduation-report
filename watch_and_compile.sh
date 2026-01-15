#!/bin/bash
# Script để tự động compile LaTeX khi file thay đổi

cd "$(dirname "$0")"

MAIN_FILE="DoAn.tex"
PDF_FILE="${MAIN_FILE%.tex}.pdf"

# Kiểm tra xem inotifywait có sẵn không
if ! command -v inotifywait &> /dev/null; then
    echo "Đang cài đặt inotify-tools..."
    echo "    " | sudo -S apt-get install -y inotify-tools
fi

echo "Đang theo dõi thay đổi trong project LaTeX..."
echo "Nhấn Ctrl+C để dừng"
echo ""

# Compile lần đầu
./compile.sh

# Mở PDF viewer nếu chưa mở
if ! pgrep -f "evince.*$PDF_FILE" > /dev/null; then
    evince "$PDF_FILE" 2>/dev/null &
    sleep 1
fi

# Theo dõi thay đổi và tự động compile
inotifywait -m -r -e modify,create,delete --format '%w%f' \
    --include '\.(tex|bib|cls|sty)$' \
    . 2>/dev/null | while read FILE; do
    echo "Phát hiện thay đổi: $FILE"
    echo "Đang compile lại..."
    ./compile.sh
    
    # Reload PDF trong evince nếu đang mở
    if pgrep -f "evince.*$PDF_FILE" > /dev/null; then
        # Gửi signal để evince reload
        pkill -HUP -f "evince.*$PDF_FILE" 2>/dev/null || true
    fi
done
