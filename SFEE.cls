%%% Document class for "Smart Factory and Efficence Energy" journal
%%% Developed by Juan de Anda Suárez <juan.ds@purisima.tecnm.mx> 
%%% Biography sfee.bst

\NeedsTeXFormat{LaTeX2e} %File para indicar la version de latex con la que se va trabajar
\ProvidesClass{SFEE}[2023/11/23 version1.0] %nombre de la clase de para article
\LoadClass[journal,noindent,headline]{paper}
%\LoadClass[10pt,letterpaper,twocolumn]{article}

\usepackage{xcolor}
\usepackage{mdframed}
\usepackage{graphicx}
\usepackage{academicons}
\usepackage{svg}
\usepackage{yfonts,color}
\usepackage{datetime}
\usepackage{etoolbox}

\newcommand{\headlinecolor}{\normalcolor}

\RequirePackage{xcolor}
\definecolor{slcolor}{HTML}{882B21}






\let\Abstract\abstract %color al abstract
\long\def\abstract{\mdframed[backgroundcolor=black!12,hidealllines=true]
  \vspace*{-0.5\baselineskip}\Abstract}
\let\endAbstract\endabstract
\def\endabstract{\endAbstract\endmdframed\par\bigskip}

\newcommand\doi[1]{\renewcommand\@doi{doi:10.61794/#1}}
\newcommand\@doi{}

\newcommand\received[1]{\renewcommand\@received{Received #1}}
\newcommand\@received{}

\newcommand\accepted[1]{\renewcommand\@accepted{Accepted #1}}
\newcommand\@accepted{}

\newcommand\Vol[1]{\renewcommand\@Vol{#1}}
\newcommand\@Vol{}

\newcommand\ppInit[1]{\renewcommand\@ppInit{#1}}
\newcommand\@ppInit{}

\newcommand\ppEnd[1]{\renewcommand\@ppEnd{#1}}
\newcommand\@ppEnd{}

\oddrunhead{SFEE, Vol. \textsc{\@Vol}, ISSN ???-???, pp. \@ppInit-\@ppEnd}

\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption{green}{\renewcommand{\headlinecolor}{\color{green}}}
\DeclareOption{red}{\renewcommand{\headlinecolor}{\color{slcolor}}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax


\newcounter{fnote}
\def\fnmark[#1]{\let\comma\@empty
    \def\@fnmark{\@for\@@fnmark:=#1\do{%
    \edef\fnotenum{\@ifundefined{X@\@@fnmark}{1}{\Ref{\@@fnmark}}}%
  \unskip\comma\fnotenum\let\comma,}}%
}


%\fancyfoot[C]{\tiny Copyright \textcopyright\ 2009 All rights reserved. Duplication for purposes of any kind is strictly forbidden.}

\RequirePackage{authblk}
\renewcommand{\maketitle}{%
    \twocolumn[%
    \raisebox{10pt}{\href{https://sfee.space/}{\includegraphics[width=7.61pc]{logo_sfee.png}}} \raisebox{25pt}{\href{https://purisima.tecnm.mx/}{\centering \color{blue} \textcopyright \textbf{\the\year\ Tecnológico  Nacional de México/ITS Purísima del Rincón}}} \raisebox{21pt}{\href{https://creativecommons.org/licenses/by-nc/4.0/deed.en}{\includegraphics[width=3.61pc]{CC.png}}} \par
        \fontsize{15}{15}\fontfamily{phv}\fontseries{b}%
        \fontshape{sl}\selectfont\headlinecolor
        \textbf{\@title} \vskip 4pt
        \fontsize{12}{12}\fontfamily{phv}\fontseries{b}%
        \setcounter{footnote}{0}%
        \fontshape{sl}\selectfont\headlinecolor
        \@author \vskip 4pt
        \@doi \vskip 3pt
        \@received ; \@accepted
        ]%
    \vskip 4pt
    \renewcommand{\AB@affillist}{}
    \renewcommand{\AB@authlist}{}
    \setcounter{authors}{0}
    \typeout{Article: \@shortauthor}
        %\setcounter{affil}{0}%
        \setcounter{section}{0}%
        \setcounter{subsection}{0}%
        \setcounter{subsubsection}{0}%
        \setcounter{paragraph}{0}%
        \setcounter{subparagraph}{0}%
        \setcounter{figure}{0}%
        \setcounter{table}{0}%
        \setcounter{equation}{0}%
}
\vfill
%biography
%Biography with a photograph
\ifdefined\biography\else\newenvironment{biography}{}{}\fi
\ifdefined\Contribution\else\newenvironment{Contribution}{}{}\fi
\unitlength 1in\parskip=0pt\par\parindent 1em\interlinepenalty500%


