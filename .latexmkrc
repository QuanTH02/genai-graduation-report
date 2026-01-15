# Cấu hình latexmk cho project này

# Output directory
$out_dir = '.';

# PDF mode
$pdf_mode = 5;  # Sử dụng pdflatex

# Cleanup
$clean_ext = 'bbl synctex.gz';

# Continuous mode (tự động compile khi file thay đổi)
$preview_continuous_mode = 1;

# Viewer
$pdf_previewer = 'start evince';

# Tự động xử lý bibliography
$bibtex_use = 2;

# Encoding
$pdflatex = 'pdflatex -interaction=nonstopmode -file-line-error %O %S';
