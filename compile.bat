@echo off
REM Script để compile LaTeX document trên Windows

cd /d "%~dp0"

set LATEX_DIR=latex
set MAIN_FILE=DoAn.tex
set OUTPUT_DIR=.

echo Đang compile LaTeX document: %LATEX_DIR%\%MAIN_FILE%

REM Compile với latexmk
cd %LATEX_DIR%
latexmk -pdf -interaction=nonstopmode -file-line-error -outdir=..\%OUTPUT_DIR% %MAIN_FILE%
set COMPILE_STATUS=%ERRORLEVEL%
cd ..

if %COMPILE_STATUS% EQU 0 (
    echo ✓ Compile thành công!
    echo PDF được tạo tại: %MAIN_FILE:.tex=.pdf%
) else (
    echo ✗ Compile thất bại. Kiểm tra log file để biết lỗi.
    exit /b 1
)
