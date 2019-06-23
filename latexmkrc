use Cwd qw();
my $DISSINPUT = Cwd::cwd() . "/src/";

$ENV{'TEXINPUTS'} = $DISSINPUT;
$ENV{'BIBINPUTS'} = $DISSINPUT;
$ENV{'BSTINPUTS'} = $DISSINPUT;

$pdflatex = 'env TEXINPUTS=$DISSINPUT:$TEXINPUTS pdflatex %O %S';
$bibtex = 'env BIBINPUTS=$DISSINPUT:$BIBINPUTS BSTINPUTS=$DISSINPUT:$BSTINPUTS bibtex %O %B';
$out_dir = './tmp';
$aux_dir = "./tmp";
$view = "pdf";
$go_mode = 1; # -g option
@default_files = ("src/dissertation.tex");
$bibtex_use = 1;
$pdf_mode = 1; # -pdf option, generate pdf using pdflatex
$clean_ext = "aux out lot log lof toc bbl blg synctex.gz";
$pdf_previewer = "start evince %O %S"; # -pvc option
$cleanup_mode = 2;
