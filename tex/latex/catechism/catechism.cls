%------------------------------------------------------------
%  Identification
%------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{catechism}[2004/08/24]

%------------------------------------------------------------
%  Initial code
%------------------------------------------------------------
\RequirePackage{ifthen}
\newboolean{draftmode}
\newboolean{draftwater} % Do a draft watermark?
\newboolean{screen}% Handle pdfscreen ok
\newboolean{notoc}% Do not include a toc

%------------------------------------------------------------
%  Declaration of options
%------------------------------------------------------------
\DeclareOption{draftmode}{\setboolean{draftmode}{true}}
\DeclareOption{draftwater}{\setboolean{draftwater}{true}}
\DeclareOption{screen}{\setboolean{screen}{true}}
\DeclareOption{notoc}{\setboolean{notoc}{true}}
%------------------------------------------------------------
%  Execution of options
%------------------------------------------------------------
\ProcessOptions

%------------------------------------------------------------
%  Package loading
%------------------------------------------------------------
\LoadClass[11pt,article,letterpaper,twoside]{memoir}
\usepackage[T1]{fontenc}
\usepackage
  { amsfonts%		extra mathematical fonts
  , bookman%		still the best
%  , fourier%
%   , iwona%
%   , kurier%
%   , mathpazo%
%   , palatino%
%   , pxfonts%
  , booktabs%		"publication quality tables"
  , color%		color capability
  , graphicx%		incorporate images
  , ifthen%		conditional source
  , xspace%		space character unless punctuation follows
  , varioref%           Smart references
  }

\usepackage[ragged]{sidecap}

\usepackage%
    [ pdfpagelabels%
    , pdftex%
%    , dvipdfm%
    , pdfstartview={FitV}%
    , pdfpagemode={None}%
    , pdfpagelayout=Facing%
    ]%
    {hyperref}

\usepackage{memhfixc}%		ensure hyperref/memoir compatability
\tightlists

%------------------------------------------------------------
%  Main code
%------------------------------------------------------------

\ifthenelse{\boolean{draftwater}}
 {%
  \definecolor{draftcolor}{rgb}{1.0,0.8,0.8}%
  \usepackage[draft]{pdfdraftcopy} %"DRAFT" watermark
  \draftstring{DRAFT \docversion}
  \draftcolor{draftcolor}
  \draftfontfamily{ptm}
  \draftfontsize{100}
  \draftangle{45}
%  \draftfontattrib{\upshape}
 }{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% General document parameters and settings:

\ifthenelse{\not \boolean{screen}}
{%
%\settypeblocksize{52\onelineskip}{39pc}{*}  % for 10-pt type
\settypeblocksize{47\onelineskip}{39pc}{*}
\setlrmargins{*}{*}{1}
\setulmargins{*}{*}{1}
}{}

%specify common hyperref options
\hypersetup{%
    anchorcolor=black%
  , backref=true%
  , bookmarks=true%
  , bookmarksnumbered=true%
  , bookmarksopen=false%
  , bookmarksopenlevel=1%
  , breaklinks=true%
  , citecolor=blue%
  , colorlinks=true%
  , draft=false%
  , filecolor=blue%
  , linkcolor=blue%
  , linktocpage=true%
  , menucolor=blue%
  , plainpages=false%
  , urlcolor=blue%
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Table of contents parameters:

\ifthenelse{\boolean{draftmode}}
{%
  \maxtocdepth{subsubsection}
}{%
  \maxtocdepth{chapter}
}

\maxsecnumdepth{subsubsection}

\ifthenelse{\not{\boolean{screen}}}
{%
\setlength{\cftbeforechapterskip}{0in}
\setlength{\cftbeforesectionskip}{0in}

\setlength  {\parskip     }{.5\baselineskip}
\addtolength{\footnotesep }{.5\baselineskip}
\checkandfixthelayout
}{}

\vfuzz2pt	% don't report over-full v-boxes if over-edge is small
\hfuzz2pt	% don't report over-full h-boxes if over-edge is small

\clubpenalty=10000%		discourage widows
\widowpenalty=10000%		discourage widows
\displaywidowpenalty=10000%	discourage widows

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Document's page style
%
% If [draftmode] was specified, we put document version information on
% the titlepage and on the odd-numbered page headers.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\headwidth}{\textwidth}
\makepagestyle   {paternopage}
\makerunningwidth{paternopage}{\headwidth}
\makeheadrule    {paternopage}{\headwidth}{\normalrulethickness}
\makerunningwidth{paternopage}{\headwidth}

\ifthenelse{\boolean{draftmode}}
{%
  \makeevenhead     {paternopage}%
  {\normalfont\bfseries\shorttitle\ (version \docversion)}%
  {}%
  {\normalfont\bfseries\thepage}
  \makeoddhead    {paternopage}%
  {\normalfont\bfseries\thepage}%
  {}%
  {\normalfont\bfseries \authorname}
}{%
  \makeevenhead     {paternopage}%
  {\normalfont\bfseries\shorttitle}%
  {}%
  {\normalfont\bfseries\thepage}
  \makeoddhead    {paternopage}%
  {\normalfont\bfseries\thepage}%
  {}%
  {\normalfont\bfseries \authorname}
}

\pagestyle{paternopage}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% New commands:

\newcommand{\colorrule}[1]%
  {\color{#1}\hrulefill\normalcolor}

\newcommand{\noindentcolorrule}[1]%
  {\noindent\colorrule{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Formatting:

\newcommand{\term}[1]%	format terminology in italicized font
  {\textbf{#1}\xspace}

\newcommand{\spec}[1]%	format special words in small caps
  {\textsc{\lowercase{#1}}\xspace}

\newcommand{\classname}[1]% format class names in italics
  {\textit{#1}\xspace}

\newcommand{\conceptname}[1]% format concept names in sans-serif
  {\textsf{#1}\xspace}

\newcommand{\important}[1]% important callouts in bold red
  {\textbf{\color{red}#1}}

\newcommand{\code}[1]% inlined (non-C++ code)?, filenames, etc.
  {\texttt{#1}}

\newcommand{\cpp}%				'C++'
  {C\kern-0.15ex{+}\kern-0.1ex{+}\xspace}

\newenvironment{fixme}%  format notes during document preparation
  {\sffamily\slshape\color{red}}%
  {} % \rmfamily\upshape\normalcolor

\newcommand{\struct}{\cppcode{struct}}
\newcommand{\class}{\cppcode{class}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Symbols:

\newcommand{\middot}{$\cdot$\xspace}% raised dot

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Abbreviations for general use:

\newcommand{\adhoc}{\textit{ad hoc}\xspace}%	ad hoc
\newcommand{\eg   }{\textit{e.g.}\xspace}%	e.g.,
\newcommand{\etal }{\textit{et al.}\xspace}%	et al.
\newcommand{\etc  }{\textit{etc}\xspace}%	etc.
\newcommand{\ie   }{\textit{i.e.}\xspace}%	i.e.,
\newcommand{\qv   }{\textit{q.v.}\xspace}%	q.v.
\newcommand{\sic  }{\textit{sic}\xspace}%	sic
\newcommand{\via  }{\textit{via}\xspace}%	via
\newcommand{\viz  }{\textit{viz.}\xspace}%	viz.

\setlength{\epigraphwidth}{.65\textwidth}
\setlength{\epigraphrule}{0pt}

\epigraphtextposition{flushright}

\newcommand{\topmatter}%
{%
\flushbottom
\raggedbottomsectiontrue
\thispagestyle{empty}
\pagenumbering{arabic}

%\begin{center}
  {\HUGE\doctitle}
  { \vskip\baselineskip }
  { \href{mailto:\authoremail}{\authorname} }
%\end{center}

% ----------------------------------------------------------------------
%
% Table of Contents:
%
%\begin{figure*}[h]
%\centering\includegraphics[width=\linewidth]{pseudohaje.png}
%\end{figure*}

\ifthenelse{\not \boolean{notoc} \and \not \boolean{screen} }
{%
\noindentcolorrule{Red}
\tableofcontents*
\noindentcolorrule{Red}
}{}
%\nobibintoc

} % end of \topmatter definition

\ifthenelse{ \boolean{screen} }
{%
\setstocksize{6.25in}{8in}
\usepackage[screen,nopanel]{pdfscreen}
 \margins{0.65in}{0.65in}{0.65in}{0.65in}
 \screensize{6.25in}{8in}
}{}

% ----------------------------------------------------------------------
% Questions and answers
%
\definecolor{shadecolor}{rgb}{0.85,1.0,0.85}
\definecolor{questioncolor}{rgb}{0.0,0.3,0.0}
\newcounter{question} \setcounter{question}{0}
\renewcommand{\thequestion}{\arabic{question}}

\newenvironment{question}%
  {\refstepcounter{question}\begin{shaded}\par\noindent\textbf{\textcolor{questioncolor}{Question \thequestion: }}}
  {\end{shaded}}%\par}




