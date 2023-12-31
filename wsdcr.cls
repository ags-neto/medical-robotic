\usepackage[dvipsnames]{xcolor}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wsdcr}[2022/10/28 Waseda Course Report Class]

%%---------------------------------------------------------- 
%% theme colors
%%----------------------------------------------------------
\RequirePackage{xcolor}
\definecolor{wsdred}{HTML}{8E1728}
\definecolor{wsdgrey}{HTML}{75787B}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[twocolumn]{article}

%%----------------------------------------------------------
%% useful packages
%%----------------------------------------------------------
\RequirePackage{authblk}
\RequirePackage[utf8]{inputenc}
\RequirePackage{amsmath,amsfonts,amssymb,esint}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{subcaption}
\RequirePackage{wrapfig}
\setlength{\intextsep}{.5em}
\RequirePackage{lipsum}
\RequirePackage[title]{appendix}

%%----------------------------------------------------------
%% margins
%%----------------------------------------------------------
\RequirePackage[left=.7in,%
                right=.7in,%
                top=1.5in,%
                bottom=.7in,%
                headheight=1in,
                letterpaper]{geometry}%

%%----------------------------------------------------------
%% main color
%%----------------------------------------------------------
\renewcommand{\normalcolor}{\color{RoyalBlue}}

%%----------------------------------------------------------
%% title and headings
%%----------------------------------------------------------
\renewcommand{\maketitle}{% title format
    \twocolumn[%
        \fontsize{20}{24}\fontfamily{phv}\fontseries{b}% title font
        \fontshape{n}\selectfont\normalcolor
        \@title
        
        \vspace{9pt}
        
        \fontsize{9}{10}\fontseries{m}% author font
        \fontshape{n}\selectfont\color{black}
        \@author
        
        \vspace{9pt}
        
        \fontshape{n}\selectfont% date font
        \@date
        
        \vspace{9pt}
        ]%
}

\renewcommand{\section}{% section headings format
    \@startsection
    {section}% name
    {1}% level
    {0pt}% indent
    {-1.5ex plus -1ex minus -.2ex}% beforeskip
    {1ex plus .2ex}% afterskip
    {\fontsize{10}{12}\fontfamily{phv}\fontshape{sc}\selectfont\normalcolor}% style
}

\renewcommand{\subsection}{% section headings format
    \@startsection
    {subsection}% name
    {2}% level
    {.21cm}% indent
    {-1.5ex plus -1ex minus -.2ex}% beforeskip
    {1ex plus .2ex}% afterskip
    {\fontsize{9}{10}\fontfamily{phv}\fontshape{n}\selectfont\normalcolor}% style
}

\renewcommand{\subsubsection}{% section headings format
    \@startsection
    {subsubsection}% name
    {3}% level
    {.42cm}% indent
    {-1.5ex plus -1ex minus -.2ex}% beforeskip
    {1ex plus .2ex}% afterskip
    {\fontsize{9}{10}\fontfamily{phv}\fontshape{n}\selectfont\normalcolor}% style
}

%%----------------------------------------------------------
%% main text
%%----------------------------------------------------------
\renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}

%% drop caps
\RequirePackage{lettrine}
\renewcommand{\LettrineFontHook}{\fontfamily{ptm}\fontshape{n}\fontseries{b}\selectfont\normalcolor}
\setlength{\DefaultNindent}{0pt}
\setlength{\DefaultFindent}{.3em}

%%----------------------------------------------------------
%% section numbering
%%----------------------------------------------------------
\setcounter{secnumdepth}{3}
\renewcommand{\thesection}{\Roman{section}}
\renewcommand{\thesubsubsection}{\Alph{subsubsection}}
\renewcommand{\thesubsection}{\arabic{subsection}}

%%----------------------------------------------------------
%% headers and footers
%%----------------------------------------------------------
\RequirePackage{fancyhdr}  % Needed to define custom headers/footers
\RequirePackage{lastpage}  % Number of pages in the document
\pagestyle{fancy}          % Enables the custom headers/footers
% Headers
\lhead{\includegraphics[width=2in]{logo.png}}%
\chead{}%
\rhead{\small\sffamily\bfseries\@title--- \thepage/\pageref{LastPage}}
% Footers
\lfoot{}%
\cfoot{}%
\rfoot{}%
\renewcommand{\headrulewidth}{1pt}% % header rule
\renewcommand{\footrulewidth}{1pt}% % footer rule

%%----------------------------------------------------------
%% equations labeling according to (sub)sections
%%----------------------------------------------------------


%\renewcommand\thesection{\arabic{section}}
%\numberwithin{equation}{subsection}
%\renewcommand\theequation{\thesection.\arabic{subsection}.\arabic{equation}}

%\numberwithin{equation}{section}
%\renewcommand\theequation{\thesection.\arabic{section}.\arabic{equation}}

%%----------------------------------------------------------
%% figure and table captions
%%----------------------------------------------------------
\RequirePackage[font={sf,footnotesize,color=wsdgrey},%
                labelsep=period,%
                justification=raggedright]{caption}
\setlength{\abovecaptionskip}{8pt}
\setlength{\belowcaptionskip}{8pt}

\usepackage{matlab-prettifier}
\usepackage{amsmath}
\usepackage{epsfig}
\usepackage{graphicx}
\usepackage{float}
\usepackage{diagbox}
\usepackage[nodayofweek]{datetime}

%%----------------------------------------------------------
%% date
%%----------------------------------------------------------
\newdateformat{mydate}{\twodigit{\THEDAY}{ }\shortmonthname[\THEMONTH], \THEYEAR}