#!/bin/bash
# Script khởi động nhanh - Tự động compile và preview LaTeX

cd "$(dirname "$0")"

echo "=========================================="
echo "  LaTeX Auto Preview - Đồ án Tốt nghiệp"
echo "=========================================="
echo ""
echo "Đang khởi động preview mode..."
echo ""

# Kiểm tra và compile lần đầu
if [ ! -f "DoAn.pdf" ]; then
    echo "📄 PDF chưa tồn tại. Đang compile lần đầu..."
    ./compile.sh
    echo ""
fi

# Mở PDF viewer
echo "🔍 Đang mở PDF viewer..."
./preview.sh &
sleep 2

# Bắt đầu watch mode
echo "👀 Đang theo dõi thay đổi file..."
echo "   (Nhấn Ctrl+C để dừng)"
echo ""
./watch_and_compile.sh
