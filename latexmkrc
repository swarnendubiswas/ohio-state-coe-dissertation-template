$pdflatex = 'env TEXINPUTS="$HOME/github/ohio-state-coe-dissertation-template/src//:$TEXINPUTS" pdflatex %O %S';
$bibtex = 'env BIBINPUTS="$HOME/github/ohio-state-coe-dissertation-template/src//:$BIBINPUTS" BSTINPUTS="$HOME/github/ohio-state-coe-dissertation-template/src//:$BSTINPUTS" bibtex';
$out_dir = './tmp';
$view = "pdf";
$aux_dir = "./tmp";
$go_mode = 1; # -g option
@default_files = ("src/dissertation.tex");
$bibtex_use = 2;
$pdf_mode = 1; # -pdf option, generate pdf using pdflatex
$clean_ext = "aux out lot log lof toc bbl blg";
$pdf_previewer = "start evince %O %S"; # -pvc option
$cleanup_mode = 2;
