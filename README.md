# Unofficial Ohio State College of Engineering MS/PhD Dissertation Template

This an **unofficial** LaTeX template for help with writing MS theses, PhD dissertations, and PhD candidacy proposals at The Ohio State University. This template extends the template available from [Ted Pavlic's blog](http://phaseportrait.blogspot.com/2011/02/updated-latex-document-class-for-ohio.html).

This template attempts to follow the rules prescribed by the Graduate School and College of Engineering. I (and hopefully others) have used this template for both my candidacy proposal and my PhD dissertation, and is up to date with the graduate school requirements as of August 2016. I am sharing this template since it might help others, since no official LaTeX template is available from the graduate school as of August 2016.

**Note**: This template is not officially supported by The Ohio State University, and I do not make claims about its conformity with the current requirements.

## Directory structure

* `figs` -- Place your figures here.
* `misc` -- Miscellaneous.
* `src` -- LaTeX (`.tex` and `.bib`) files.
* `tmp` -- The auxiliary files (for e.g., `*.aux, *.lot`) get redirected to this directory.

## Building the project

I have tested with TexLive distribution 2011 onward with `latexmk`.

```Bash
cd; git clone git@github.com:swarnendubiswas/ohio-state-coe-dissertation-template.git;
cd ohio-state-coe-dissertation-template
latexmk -f
```

The build currently fails without the `-f` option to `latexmk`. There seems to be an issue with passing correct environment variables with `latexmk`.

### Including Figures

The `figs` directory is already setup, you can use the following template for including figures.

```LaTeX
\begin{figure}
  \centering
  \includegraphics{chap1/xx}
  \caption{YY}
  \label{fig:zz}
\end{figure}
```

### TODOs

* Integrate build scheme with popular editors like VS Code and GNU Emacs.
* Fix the issue with `latexmk -f`.

## Contributions

Suggestions and pull requests are welcome.
