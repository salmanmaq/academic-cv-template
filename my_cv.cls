\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[2021/08/25 My CV class]

\LoadClass[a4paper]{article}
\RequirePackage{fontawesome}  % fonts
\RequirePackage{titlesec}     % for editing sections
\RequirePackage{xcolor}
\RequirePackage[default]{raleway}
\RequirePackage{relsize}
\RequirePackage{ifthen}
\RequirePackage[margin=1cm,footskip=0.25in]{geometry}
\RequirePackage{multicol}
\RequirePackage[skins]{tcolorbox}
\RequirePackage{listofitems}
\RequirePackage{enumitem}
\RequirePackage{hyperref}

%% Page Settings
\setlength\columnsep{1cm}
\pagestyle{empty}
\setlist[itemize]{leftmargin=*}
\setlist{nolistsep}

%% Define Custom Colors
\definecolor{cvblue}{rgb}{0.32, 0.68, 0.89}
\definecolor{keywordcolor}{rgb}{0.80, 0.90, 1.0}

%% Set Separation Character for comma-separated values that are to be parsed separately as a list
\setsepchar{,}

%%% Edit Section Format
% Circled Icons
\newcommand*{\circled}[1]{
    \tikz[baseline=(char.base)]{
        \node[shape=circle,fill=black,inner sep=1.5pt,minimum size=23pt] (char) {\textcolor{white}{#1}};
    }
}

% Tech Stack boxes
\newcommand*{\keyword}[1]{
    \tikz[baseline=(char.base)]
    {
        \node[rectangle, rounded corners, fill=keywordcolor] (char) {\textcolor{black}{#1}};
    }
}

% Different Section Styles

\titleformat{\section}         
    {\ralewayextra\bfseries\raggedright\color{cvblue}} 
    {}{0em}  % prefix to all sections
    {\hspace{-0.8em}}  % code before the heading

\titleformat{\subsection}         
    {\large\bfseries} 
    {}{-0.8em}  % prefix to all sections
    {}  % code before the heading
  
\titlespacing*{\subsection}{0pt}{0.7\baselineskip}{0.4\baselineskip}

\titlespacing*{\section}{0pt}{1\baselineskip}{0.4\baselineskip}

% section with symbol besides
\let\oldsection\section
\renewcommand*{\section}[2]
{%
    \oldsection[#2]{\circled{#1} {\larger[2] #2}}
}

\newcommand*{\work}[4]
{%
    \subsection{#1} %
    \ifthenelse{\equal{#2}{}}
    {}
    {
        \textbf{#2}\\
    } %
    #3\\ %
    \ifthenelse{{\equal{#4}{}}}
    {}
    {
        \readlist\keywordlist{#4}
        {
            \foreachitem\word\in\keywordlist{\keyword{\word}}
        }
    }
}

\newcommand*{\school}[7]
{%
    \subsection{#1, #2 - #3}
    #4 - \textbf{GPA: } #5\\
    \textbf{{Thesis}} \ifthenelse{\equal{#7}{}}
        {#6}
        {\href{#7}{#6}}
}

\newcommand*{\publication}[5]
{%
    [#1] \textbf{\href{#2}{#3}}\\
    #4\\
    \emph{Main contributions:} #5
}

\newcommand*{\titletext}[7]
{%
    \begin{multicols}{2}
    \hspace{-15pt}{\ralewayextra\bfseries\fontsize{20}{20}\selectfont #1}
    {\ralewayextra\bfseries\fontsize{20}{20}\selectfont #2}\\
    \href{mailto:salmanmaq@gmail.com}{#3}\\
    #4\\
    
    \columnbreak
    
    \begin{flushright}
    \vspace*{-12pt}    
    {\ralewayextra Github} \textbf{\href{https://www.github.com/#5}{#5}}\\
    {\ralewayextra LinkedIn} \textbf{\href{https://www.linkedin.com/in/#6}{#6}}\\
    \ifthenelse{\equal{#7}{}}{}{{\ralewayextra Website} \textbf{\href{https://#7}{#7}}}

    \end{flushright}
    \end{multicols}
    \vspace{-1cm}
}

\renewcommand{\baselinestretch}{1.15}
