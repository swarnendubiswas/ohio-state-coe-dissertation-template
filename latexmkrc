$pdflatex = 'env TEXINPUTS="$HOME/Documents/github/ohio-state-cse-dissertation-template/src//:$TEXINPUTS" pdflatex %O %S';
$out_dir = './tmp';
$view = "pdf";
$aux_dir = "./tmp";
$go_mode = 1; # -g option
@default_files = ("src/dissertation.tex");
$bibtex_use = 2;
$pdf_mode = 1; # -pdf option, generate pdf using pdflatex
#$clean_ext = "aux out lot log lof toc bbl blg";
$pdf_previewer = "start evince %O %S"; # -pvc option
#$cleanup_mode = 2;

