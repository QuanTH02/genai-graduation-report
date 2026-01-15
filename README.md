# Hướng dẫn sử dụng LaTeX Preview

Project này đã được cấu hình để tự động compile và preview LaTeX khi bạn soạn thảo.

## Các script có sẵn

### 1. `compile.sh` - Compile LaTeX một lần
```bash
./compile.sh
```
Script này sẽ compile file `DoAn.tex` và tạo file PDF. Sử dụng khi bạn chỉ muốn compile một lần.

### 2. `preview.sh` - Mở PDF viewer
```bash
./preview.sh
```
Script này sẽ:
- Compile LaTeX nếu PDF chưa tồn tại
- Mở PDF viewer (Evince) để xem kết quả

### 3. `watch_and_compile.sh` - Tự động compile khi file thay đổi
```bash
./watch_and_compile.sh
```
Script này sẽ:
- Compile LaTeX lần đầu
- Mở PDF viewer tự động
- Theo dõi tất cả các file `.tex`, `.bib` và tự động compile lại khi có thay đổi
- Tự động reload PDF trong viewer

**Lưu ý:** Script này sẽ chạy liên tục. Nhấn `Ctrl+C` để dừng.

## Cách sử dụng khi soạn thảo

### Cách 1: Tự động hoàn toàn (Khuyến nghị)
1. Mở terminal trong thư mục project
2. Chạy: `./watch_and_compile.sh`
3. Bắt đầu soạn thảo file `.tex` của bạn
4. Mỗi khi bạn lưu file, PDF sẽ tự động được compile và reload

### Cách 2: Compile thủ công
1. Soạn thảo file `.tex`
2. Chạy `./compile.sh` để compile
3. Chạy `./preview.sh` để mở PDF viewer

## Cấu trúc project

- `DoAn.tex` - File LaTeX chính
- `Chuong/` - Thư mục chứa các chương
- `Hinhve/` - Thư mục chứa hình ảnh
- `lstlisting.tex` - Cấu hình cho code listings
- `.latexmkrc` - Cấu hình latexmk

## Troubleshooting

### PDF không tự động reload
- Đảm bảo bạn đang chạy `watch_and_compile.sh`
- Kiểm tra xem evince có đang mở file PDF không

### Lỗi compile
- Kiểm tra file log: `DoAn.log`
- Đảm bảo tất cả các package cần thiết đã được cài đặt
- Kiểm tra đường dẫn đến hình ảnh trong `Hinhve/`

### Thiếu package
Nếu thiếu package LaTeX, cài đặt bằng:
```bash
sudo apt-get install texlive-<package-name>
```

## Lưu ý

- File PDF được tạo tại: `DoAn.pdf`
- Các file tạm (.aux, .log, .bbl, ...) được tạo trong cùng thư mục
- Để xóa các file tạm: `latexmk -c`
