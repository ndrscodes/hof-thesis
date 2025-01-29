\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hofuniversity}[2014/01/28 Hof University Bachelor Thesis]
\RequirePackage{tabularx}
\RequirePackage{makecell}
\RequirePackage{soul}
\RequirePackage{geometry}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[11pt]{article}

\RequirePackage{listings}
\RequirePackage[toc=false]{glossaries-extra}
\RequirePackage[colorlinks]{hyperref}
\RequirePackage{fontspec}
\setmainfont{Arial}

\makenoidxglossaries

\newtoks\supervisor
\newtoks\company

\def\thefaculty{}
\def\thecourse{}
\def\thesubtitle{}
\newcommand\subtitle[1]{\def\thesubtitle{\vspace{0.5cm}\large #1}}
\newcommand\faculty[1]{\def\thefaculty{Fakultät #1\\}}
\newcommand\course[1]{\def\thecourse{Studiengang #1}}

\newenvironment{boldenv}
  {\bfseries}
  {}

\newenvironment{romannumbering}{\pagenumbering{roman}}{\pagenumbering{arabic}}

\newcommand{\resetborders}{\newgeometry{top=30mm, bottom=30mm, left=30mm, right=25mm}}
\newcommand{\useborderspec}{\renewcommand{\resetborders}{\newgeometry{top=10cm, bottom=5.5cm, left=3cm, right=3cm}}}

\newcommand{\blockingnote}{
    \section*{Sperrvermerk} % Von Hand gepflegt
    \vspace{1cm}
    \noindent
    Die vorliegende Bachelorarbeit mit dem Titel:
    \vspace{0.5cm}

    \noindent
    {\bfseries\large \@title}

    \vspace{0.5cm}
    \noindent
    beinhaltet interne und vertrauliche Informationen des Unternehmens \the\company.

    \vspace{1cm}
    \noindent
    \textbf{Eine Einsicht in diese Bachelorarbeit ist nicht gestattet. Ausgenommen davon sind die betreuenden Dozenten sowie die befugten Mitglieder des Prüfungsausschusses. Eine Veröffentlichung und Vervielfältigung der Bachelorarbeit – auch in Auszügen – ist nicht gestattet.}
    
    \vspace{1cm}
    \noindent
    Ausnahmen von dieser Regelung bedürfen einer Genehmigung des Unternehmens \the\company.
    \pagebreak
}

\renewcommand{\maketitle}{%
    \newgeometry{left=3cm, right=3cm, top=7.5cm, bottom=5.5cm}
    \sodef\thesiso{}{4pt}{0em}{0em}
    \begin{titlepage}%
        \begin{center}%
            \begin{boldenv}                
                \LARGE \@title\\
                \large \thesubtitle
                \vspace{5cm}
                
                \large\thesiso{\textbf{Bachelorarbeit}}
                \vspace{5mm}

                an der Hochschule für Angewandte Wissenschaften Hof\\
                \thefaculty
                \thecourse
                    
                \vspace*{4cm}%
                \large%
                \begin{tabular}{c@{\hspace{0.2\columnwidth}} c}
                    Vorgelegt von           & Vorgelegt bei \\
                    \makecell{\@author}     & \makecell{\the\supervisor}
                \end{tabular}

                \vspace{1cm}

                \@date

                \normalsize
            \end{boldenv}
        \end{center}
    \end{titlepage}
    \pagebreak
    \resetborders
}

\newcommand{\maketoc}{
    \glsenablehyper
    \tableofcontents
    \clearpage
    \listoffigures
    \listoftables
    \lstlistoflistings
    \printnoidxglossaries
    \clearpage
}


\newcommand{\makehead}{
    \maketitle
    \begin{romannumbering}
        \maketoc
    \end{romannumbering}
}

\newcommand{\setblocked}{
    \renewcommand{\makehead}{
        \maketitle
        \begin{romannumbering}
        \blockingnote
        \maketoc
        \end{romannumbering}
    }
}