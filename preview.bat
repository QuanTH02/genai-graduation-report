@echo off
REM Script để mở PDF preview trên Windows

cd /d "%~dp0"

set LATEX_DIR=latex
set MAIN_FILE=DoAn.tex
set PDF_FILE=%MAIN_FILE:.tex=.pdf%

REM Compile lần đầu nếu chưa có PDF
if not exist "%PDF_FILE%" (
    echo PDF chưa tồn tại. Đang compile lần đầu...
    call compile.bat
)

REM Mở PDF viewer
if exist "%PDF_FILE%" (
    echo Đang mở PDF viewer...
    start "" "%PDF_FILE%"
    echo.
    echo PDF viewer đã mở.
    echo.
    echo Để tự động compile và reload khi file thay đổi, chạy:
    echo   watch_and_compile.bat
    echo.
    echo Hoặc chỉ compile một lần:
    echo   compile.bat
) else (
    echo Không tìm thấy file PDF. Vui lòng compile trước.
)
