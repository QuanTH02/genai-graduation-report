# Cấu hình Editor

Thư mục này chứa cấu hình cho VS Code/Cursor để tối ưu hóa việc soạn thảo LaTeX.

## Word Wrap (Tự động xuống dòng)

Đã được cấu hình tự động trong `.vscode/settings.json`. Nếu vẫn không hoạt động:

### Cách bật thủ công:

1. **Trong VS Code/Cursor:**
   - Nhấn `Ctrl+,` (hoặc `Cmd+,` trên Mac) để mở Settings
   - Tìm "word wrap"
   - Chọn "Editor: Word Wrap" → chọn "on"

2. **Hoặc dùng Command Palette:**
   - Nhấn `Ctrl+Shift+P` (hoặc `Cmd+Shift+P` trên Mac)
   - Gõ "Toggle Word Wrap"
   - Nhấn Enter

3. **Hoặc dùng phím tắt:**
   - `Alt+Z` (Windows/Linux)
   - `Option+Z` (Mac)

### Các tính năng khác đã được cấu hình:

- ✅ Word wrap tự động cho file `.tex`
- ✅ Ruler ở cột 80 và 100 (để biết độ dài dòng)
- ✅ Tab size: 2 spaces
- ✅ Hiển thị whitespace ở boundary
