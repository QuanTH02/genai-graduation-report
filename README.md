# 📚 Hệ thống Soạn thảo và Preview LaTeX Tự động

## 🎯 Mục đích của Project

Project này cung cấp một môi trường soạn thảo LaTeX với khả năng **tự động compile và preview PDF** khi bạn chỉnh sửa. Được thiết kế đặc biệt cho các đồ án tốt nghiệp, luận văn, và tài liệu học thuật dài.

### Tính năng chính:
- ✅ **Tự động compile** khi file LaTeX thay đổi
- ✅ **Tự động reload PDF** trong viewer
- ✅ **Hỗ trợ đa nền tảng**: Windows và Linux
- ✅ **Cấu trúc thư mục rõ ràng**: Tách biệt source code và config
- ✅ **Syntax highlighting** cho code listings (Python, Java, JavaScript, C/C++)

---

## 📁 Cấu trúc thư mục

```
Do_an_tot_nghiep/
├── latex/                          # 📁 TẤT CẢ FILE LaTeX Ở ĐÂY
│   ├── DoAn.tex                   # File LaTeX chính
│   ├── Bia.tex                    # File bìa
│   ├── Chuong/                    # Thư mục chứa các chương
│   │   ├── 1_Gioi_thieu.tex
│   │   ├── 2_Khao_sat.tex
│   │   └── ...
│   ├── Hinhve/                    # Thư mục chứa hình ảnh
│   │   ├── *.png
│   │   └── *.jpg
│   ├── lstlisting.tex             # Cấu hình code listings
│   ├── Tu_viet_tat.tex            # Định nghĩa từ viết tắt
│   ├── Danh_sach_tai_lieu_tham_khao.bib  # Bibliography
│   └── .latexmkrc                 # Cấu hình latexmk
│
├── compile.sh / compile.bat        # ⚙️ Script compile (Linux/Windows)
├── preview.sh / preview.bat       # Script mở PDF viewer
├── watch_and_compile.sh / watch_and_compile.bat  # Script tự động compile
├── start_preview.sh / start_preview.bat  # Script khởi động nhanh
├── DoAn.pdf                        # 📄 Output PDF (được tạo tự động)
├── .gitignore                      # Git ignore file
└── README.md                       # File này
```

---

## 🚀 Hướng dẫn Cài đặt và Sử dụng

### 📋 Yêu cầu hệ thống

- **LaTeX Distribution**: TeX Live (Linux) hoặc MiKTeX (Windows)
- **PDF Viewer**: Evince (Linux) hoặc Adobe Reader/SumatraPDF (Windows)
- **Terminal**: Bash (Linux) hoặc Command Prompt/PowerShell (Windows)

---

## 🐧 Hướng dẫn cho Linux

### Bước 1: Cài đặt LaTeX

```bash
# Cập nhật package list
sudo apt-get update

# Cài đặt TeX Live đầy đủ (bao gồm tất cả packages)
sudo apt-get install -y texlive-full texlive-latex-extra latexmk

# Cài đặt inotify-tools (để tự động theo dõi file)
sudo apt-get install -y inotify-tools

# Cài đặt PDF viewer (nếu chưa có)
sudo apt-get install -y evince
```

**Lưu ý:** Cài đặt `texlive-full` có thể mất 15-30 phút và chiếm khoảng 4-5GB dung lượng. Nếu muốn tiết kiệm dung lượng, có thể cài `texlive-base` và các package riêng lẻ khi cần.

### Bước 2: Clone hoặc tải project

```bash
# Nếu có git
git clone <repository-url>
cd Do_an_tot_nghiep

# Hoặc giải nén file zip
unzip Do_an_tot_nghiep.zip
cd Do_an_tot_nghiep
```

### Bước 3: Cấp quyền thực thi cho scripts

```bash
chmod +x *.sh
```

### Bước 4: Chạy preview mode

```bash
# Cách 1: Tự động hoàn toàn (Khuyến nghị)
./start_preview.sh

# Cách 2: Chỉ compile một lần
./compile.sh

# Cách 3: Mở PDF viewer
./preview.sh
```

### Bước 5: Bắt đầu soạn thảo

1. Mở file `.tex` trong thư mục `latex/` bằng editor yêu thích (VS Code, Vim, etc.)
2. Soạn thảo nội dung
3. **Lưu file** (Ctrl+S)
4. PDF sẽ **tự động compile và reload** trong viewer

**Lưu ý:** Script `start_preview.sh` sẽ chạy liên tục. Nhấn `Ctrl+C` trong terminal để dừng.

---

## 🪟 Hướng dẫn cho Windows

### Bước 1: Cài đặt LaTeX

#### Cách 1: MiKTeX (Khuyến nghị - Nhẹ hơn)

1. Tải MiKTeX từ: https://miktex.org/download
2. Chạy installer và chọn "Install missing packages on-the-fly: Yes"
3. Đảm bảo thêm MiKTeX vào PATH:
   - Mở "System Properties" → "Environment Variables"
   - Thêm `C:\Program Files\MiKTeX\miktex\bin\x64` vào PATH

#### Cách 2: TeX Live (Đầy đủ hơn)

1. Tải TeX Live từ: https://www.tug.org/texlive/windows.html
2. Chạy `install-tl-windows.exe`
3. Chọn "Full scheme" để cài đặt đầy đủ

### Bước 2: Cài đặt latexmk

**Với MiKTeX:**
- latexmk thường được cài tự động. Nếu chưa có, mở MiKTeX Console và cài package `latexmk`.

**Với TeX Live:**
- latexmk đã được bao gồm.

### Bước 3: Clone hoặc tải project

```cmd
REM Nếu có git
git clone <repository-url>
cd Do_an_tot_nghiep

REM Hoặc giải nén file zip
```

### Bước 4: Chạy preview mode

Mở **Command Prompt** hoặc **PowerShell** trong thư mục project:

```cmd
REM Cách 1: Tự động (Khuyến nghị)
start_preview.bat

REM Cách 2: Chỉ compile một lần
compile.bat

REM Cách 3: Mở PDF viewer
preview.bat
```

### Bước 5: Bắt đầu soạn thảo

1. Mở file `.tex` trong thư mục `latex/` bằng editor yêu thích (VS Code, Notepad++, etc.)
2. Soạn thảo nội dung
3. **Lưu file** (Ctrl+S)
4. **Chạy lại `compile.bat`** để cập nhật PDF

**Lưu ý:** Trên Windows, tự động reload PDF có thể không hoạt động tốt như Linux. Bạn có thể:
- Sử dụng PDF viewer có tính năng auto-reload (như SumatraPDF)
- Hoặc đóng và mở lại PDF sau mỗi lần compile

---

## 📖 Hướng dẫn Sử dụng Chi tiết

### Các Script có sẵn

#### Linux (`.sh` files)

| Script | Mô tả |
|-------|-------|
| `compile.sh` | Compile LaTeX một lần và tạo PDF |
| `preview.sh` | Mở PDF viewer (Evince) |
| `watch_and_compile.sh` | Tự động compile khi file thay đổi |
| `start_preview.sh` | **Khuyến nghị**: Kết hợp tất cả chức năng |

#### Windows (`.bat` files)

| Script | Mô tả |
|-------|-------|
| `compile.bat` | Compile LaTeX một lần và tạo PDF |
| `preview.bat` | Mở PDF viewer mặc định |
| `watch_and_compile.bat` | Theo dõi thay đổi (cần compile thủ công) |
| `start_preview.bat` | **Khuyến nghị**: Kết hợp tất cả chức năng |

### Workflow đề xuất

#### Trên Linux:
```bash
# Terminal 1: Chạy preview mode
./start_preview.sh

# Terminal 2 hoặc Editor: Soạn thảo file
code latex/DoAn.tex
# hoặc
vim latex/Chuong/1_Gioi_thieu.tex
```

#### Trên Windows:
```cmd
REM Command Prompt: Chạy preview mode
start_preview.bat

REM Editor: Soạn thảo file
REM Sau mỗi lần lưu, chạy lại compile.bat
```

---

## 🔧 Troubleshooting

### ❌ Lỗi: "pdflatex not found" hoặc "latexmk not found"

**Linux:**
```bash
# Kiểm tra đã cài đặt chưa
which pdflatex
which latexmk

# Nếu chưa có, cài đặt lại
sudo apt-get install texlive-full latexmk
```

**Windows:**
- Kiểm tra PATH có chứa đường dẫn đến MiKTeX/TeX Live chưa
- Thử mở lại Command Prompt sau khi cài đặt
- Chạy: `pdflatex --version` để kiểm tra

### ❌ Lỗi: "Package not found"

**Linux:**
```bash
# Cài package cụ thể
sudo apt-get install texlive-<package-name>

# Hoặc cài đầy đủ
sudo apt-get install texlive-full
```

**Windows (MiKTeX):**
- MiKTeX sẽ tự động cài package khi cần (nếu đã bật "Install missing packages on-the-fly")
- Hoặc mở MiKTeX Console và cài thủ công

### ❌ PDF không tự động reload

**Linux:**
- Đảm bảo đang chạy `watch_and_compile.sh` hoặc `start_preview.sh`
- Kiểm tra evince có đang mở PDF không
- Thử đóng và mở lại PDF viewer

**Windows:**
- Windows không hỗ trợ tốt auto-reload. Sử dụng SumatraPDF với tính năng auto-reload
- Hoặc đóng và mở lại PDF sau mỗi lần compile

### ❌ Lỗi: "File not found" khi compile

- Đảm bảo đang chạy script từ **thư mục gốc** (không phải `latex/`)
- Kiểm tra đường dẫn hình ảnh trong `DoAn.tex`
- Đảm bảo file `.bib` nằm trong `latex/`

### ❌ Lỗi: "Permission denied" (Linux)

```bash
# Cấp quyền thực thi
chmod +x *.sh
```

---

## 🧹 Dọn dẹp File tạm

### Linux:
```bash
# Xóa tất cả file tạm
cd latex
latexmk -c
cd ..
rm -f DoAn.{aux,log,bbl,blg,out,toc,lof,lot,fls,fdb_latexmk,run.xml}
```

### Windows:
```cmd
cd latex
latexmk -c
cd ..
del DoAn.aux DoAn.log DoAn.bbl DoAn.blg DoAn.out DoAn.toc DoAn.lof DoAn.lot DoAn.fls DoAn.fdb_latexmk DoAn.run.xml
```

---

## 📝 Lưu ý Quan trọng

1. **Tất cả file LaTeX (.tex, .bib) nằm trong thư mục `latex/`**
2. **File PDF được tạo ở thư mục gốc** (cùng cấp với các script)
3. **Hình ảnh nằm trong `latex/Hinhve/`**
4. **Các script chạy từ thư mục gốc** (không phải `latex/`)
5. **Khi soạn thảo, mở file trong `latex/` hoặc `latex/Chuong/`**

---

## 🎓 Mục đích Sử dụng

Project này được thiết kế cho:
- 📄 **Đồ án tốt nghiệp** (như project này)
- 📚 **Luận văn, luận án**
- 📖 **Tài liệu học thuật dài**
- 📝 **Báo cáo kỹ thuật**

Với mục tiêu giúp người dùng:
- ✅ Tập trung vào nội dung thay vì phải compile thủ công
- ✅ Xem kết quả ngay lập tức sau khi chỉnh sửa
- ✅ Tăng năng suất soạn thảo
- ✅ Giảm lỗi do quên compile

---

## 📞 Hỗ trợ

Nếu gặp vấn đề:
1. Kiểm tra phần **Troubleshooting** ở trên
2. Xem file log: `DoAn.log` (ở thư mục gốc)
3. Đảm bảo đã cài đặt đầy đủ theo hướng dẫn

---

## 📄 License

Project này được tạo để hỗ trợ soạn thảo LaTeX. Sử dụng tự do cho mục đích học tập và nghiên cứu.
