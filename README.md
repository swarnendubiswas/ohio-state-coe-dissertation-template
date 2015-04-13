# Ohio State CSE Dissertation Template

This an unofficial LaTeX template for help with writing CSE dissertation at Ohio State University. This is not
officially supported or provided by the CSE department at Ohio State University.

I have used this template for my candidacy proposal, and it seems current as of April 2015. I am sharing this template
since it might help other students. No LaTeX template seems to be available from the graduate school web pages as of
April 2015.

### Directory structure

The following structure is suggested.

* figs -- Place your figures here.
* misc -- Miscellaneous.
* src -- LaTeX files.
* tmp -- You can redirect your output (`*.aux, *.lot`) to this directory. 

### Building the project

I have tested with TexLive distribution 2011 onward with 
* latexmk 
* pdflatex

You might need to change or pass the location of the bibliography file based on your environment and build system.

### Notes

#### Adding figures

You can use the following template which shows how your `figs` directory structure is already setup.

```
\begin{figure}
  \centering
  \includegraphics{chap1/xx}
  \caption{YY}
  \label{fig:zz}
\end{figure}
```


