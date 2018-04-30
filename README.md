# Ohio State College of Engineering MS/PhD Dissertation Template

This an **unofficial** LaTeX template for help with writing MS theses and PhD dissertations at The Ohio State University. More importantly, this template extends the template available from [Ted Pavlic's blog](http://phaseportrait.blogspot.com/2011/02/updated-latex-document-class-for-ohio.html).

This template follows the rules prescribed by the Graduate School and College of Engineering. I (and hopefully others) have used this template for both my candidacy proposal and my dissertation, and it is up to date with the graduate school requirements as of August 2016. I am sharing this template since it might help other students, since no LaTeX template is available from the graduate school web pages as of August 2016. This template is **not officially supported** by The Ohio State University. I do not make claims about its **conformity with the current requirements.**

## Directory structure

The following structure is suggested.

* `bib` -- Bibliography files.
* `figs` -- Place your figures here.
* `misc` -- Miscellaneous.
* `src` -- LaTeX files.
* `tmp` (optional) -- You can redirect your output (`*.aux, *.lot`) to this directory.

## Building the project

I have tested with TexLive distribution 2011 onward with `latexmk` and `pdflatex`.

To include references, create a symlink to the bib files under `tmp`:

```Bash
ln -s bib/ref.bib tmp/ref.bib
```

You might need to change or pass the location of the bibliography file based on your environment and build system. So far, I have not been able to provide the bib path to `latexmk` more efficiently.

## Notes

### Adding figures

The `figs` directory is already setup, you can use the following template for including figures.

```LaTeX
\begin{figure}
  \centering
  \includegraphics{chap1/xx}
  \caption{YY}
  \label{fig:zz}
\end{figure}
```

### Contributions

Suggestions and pull requests are welcome.
