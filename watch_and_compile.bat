@echo off
REM Script để tự động compile LaTeX khi file thay đổi trên Windows

cd /d "%~dp0"

set LATEX_DIR=latex
set MAIN_FILE=DoAn.tex
set PDF_FILE=%MAIN_FILE:.tex=.pdf%

echo Đang theo dõi thay đổi trong project LaTeX...
echo Nhấn Ctrl+C để dừng
echo.

REM Compile lần đầu
call compile.bat

REM Mở PDF viewer nếu chưa mở
tasklist /FI "IMAGENAME eq AcroRd32.exe" 2>NUL | find /I /N "AcroRd32.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo PDF viewer đã mở.
) else (
    if exist "%PDF_FILE%" (
        start "" "%PDF_FILE%"
        timeout /t 2 /nobreak >nul
    )
)

echo.
echo Đang theo dõi thay đổi file...
echo Lưu ý: Trên Windows, bạn cần tự compile lại sau mỗi lần lưu file.
echo Chạy compile.bat để compile lại.
echo.
echo Nhấn Ctrl+C để dừng theo dõi.

REM Vòng lặp đơn giản - người dùng sẽ tự compile
:loop
timeout /t 5 /nobreak >nul
goto loop
