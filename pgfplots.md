Simple graph example with tikz/pgfplot

``` latex
\documentclass[tikz,border=10pt]{standalone}

\usepackage{tikz}
\usepackage{pgfplots}

\definecolor{myblue}{rgb}{0.0,0.57,0.81}

\begin{document}

\begin{tikzpicture}
\begin{axis}[tick pos=left]
  \addplot[color=myblueT!50,no markers,line width=1pt,each nth point={1}] table[x=time,y=Variable, col sep=semicolon] {curves.csv};
  %space|tab|comma|colon|semicolon|braces|&|ampersand
  \legend{$Variable$}
\end{axis}
\end{tikzpicture}

\end{document}
```
