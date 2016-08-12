# Ohio State CSE Dissertation Template

This an unofficial LaTeX template for help with writing CSE dissertation at Ohio State University. This template derives from the template available from the following link http://phaseportrait.blogspot.com/2011/02/updated-latex-document-class-for-ohio.html.

This is not
officially supported or provided by the CSE department at Ohio State University.

I have used this template for both my candidacy proposal and my dissertation, and it is up to date with the graduate
school requirements as of August 2016. I am sharing this template since it might help other students. No LaTeX template
is available from the graduate school web pages as of August 2015. Students at the College of Engineering use the following 

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


