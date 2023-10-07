# LaTeX class to typeset academic CV

The `academiccv` is geared towards typesetting a CV for researchers and professors
in an academic context.
In particular, it allows one to easily show their publications, supervised
students, projects, teaching duties, and so on.
The class is split into multiple modules, each defining their own variables
and commands.

An example illustrating the basic features of the class is given in
[`example.tex`](example.tex), while a more complete documentation can be compiled from
[`academiccv.dtx`](academiccv.dtx).

Contributions under the form of pull requests are welcomed!

## Installation

Download a release archive or run `make` to obtain the `.cls` and `.sty` files.
Then, copy the `.cls` and the `.sty` files in a folder that is considered by your
LaTeX distribution.
This can be the folder containing your CV file.
For TeX-live under Linux users, see the command `tlmgr` command to install the
files globally.

## Usage

The most simple document using the class is:
```Latex
\documentclass{academiccv}

\begin{document}
  \makecvtitle{
    author = Your Name,
  }
  
  \section{Publications}
  
  \publication{
    title = Publication number 1,
    authors = Names of the author,
    year = Publication year,
  }
\end{document}
```
yielding
![The resulting PDF contains the words Your Name displayed in big. Next to it is the mention Last updated on August 26, 2023. Below that lies the section Publications which contains a single publication named "Publication number 1". Its authors are "Names of the authors" and is published in "Publication year".](minimal.png "Minimal CV with a single publication")

See [`example.tex`](example.tex) for a more complete example showcasing all
typesetting commands and how to change the styles.


## License
This work is licensed under LaTeX Project Public License (LPPL).