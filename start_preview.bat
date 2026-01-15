@echo off
REM Script khởi động nhanh - Tự động compile và preview LaTeX trên Windows

cd /d "%~dp0"

echo ==========================================
echo   LaTeX Auto Preview - Đồ án Tốt nghiệp
echo ==========================================
echo.
echo Đang khởi động preview mode...
echo.

REM Kiểm tra và compile lần đầu
if not exist "DoAn.pdf" (
    echo 📄 PDF chưa tồn tại. Đang compile lần đầu...
    call compile.bat
    echo.
)

REM Mở PDF viewer
echo 🔍 Đang mở PDF viewer...
call preview.bat

echo.
echo 👀 Đang theo dõi thay đổi file...
echo    (Nhấn Ctrl+C để dừng)
echo.
echo 💡 Lưu ý: Sau mỗi lần lưu file, chạy compile.bat để cập nhật PDF
echo.

REM Chạy watch mode
call watch_and_compile.bat
