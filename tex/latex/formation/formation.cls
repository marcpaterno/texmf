%------------------------------------------------------------
%  Identification
%------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{formation}[2007/10/13]

%------------------------------------------------------------
%  Initial code
%------------------------------------------------------------
\RequirePackage{ifthen}
\newboolean{draft}  % Put draft notice in header, and watermark
\newboolean{screen}     % Handle pdfscreen ok

%------------------------------------------------------------
%  Declaration of options
%------------------------------------------------------------
\DeclareOption{draft}{\setboolean{draft}{true}}
\DeclareOption{screen}{\setboolean{screen}{true}}
%------------------------------------------------------------
%  Execution of options
%------------------------------------------------------------
\ProcessOptions

%------------------------------------------------------------
%  Package loading
%------------------------------------------------------------
\LoadClass[12pt,article,letterpaper,twoside]{memoir}

\usepackage
  { amsfonts%		extra mathematical fonts
  , bookman%		still the best
  , booktabs%		"publication quality tables"
  , color%		color capability
  , colornames%
  , graphicx%		incorporate images
  , ifthen%		conditional source
  , varioref%           Smart references
  , xspace%		space character unless punctuation follows
  }

%\usepackage[ragged]{sidecap}

\usepackage%
  [ pdfpagelabels%
  , pdftex%
  , pdfstartview={FitV}%
  , pdfpagemode={}%
  ]{hyperref}

\usepackage{memhfixc}%		ensure hyperref/memoir compatability
\tightlists

%------------------------------------------------------------
%  Main code
%------------------------------------------------------------

\ifthenelse{\boolean{draft}}
 {%
  \definecolor{draftcolor}{rgb}{0.0,0.8,0.8}%
  \usepackage[draft]{pdfdraftcopy} %"DRAFT" watermark
  \draftstring{DRAFT}
  \draftcolor{draftcolor}
  \draftfontfamily{ptm}
  \draftfontsize{180}
  \draftangle{45}
 }{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% General document parameters and settings:

\ifthenelse{\not \boolean{screen}}
{%
\settypeblocksize{45\onelineskip}{35pc}{*}
\setlrmargins{*}{*}{1}
\setulmargins{*}{*}{1}
}{}

%specify common hyperref options
\hypersetup{%
    anchorcolor=black%
  , bookmarksnumbered=true%
  , bookmarksopen=true%
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

\ifthenelse{\not{\boolean{screen}}}
{%
\setlength{\cftbeforechapterskip}{0in}
\setlength{\cftbeforesectionskip}{0in}

\setlength  {\parskip     }{.5\baselineskip}
\addtolength{\footnotesep }{.5\baselineskip}
\setlength{\headwidth}{\textwidth}
\setlength{\topmargin}{0pt}
\setlength{\headheight}{3.0ex}
\checkandfixthelayout
}{}

\vfuzz2pt	% don't report over-full v-boxes if over-edge is small
\hfuzz2pt	% don't report over-full h-boxes if over-edge is small

\clubpenalty=10000%		discourage widows
\widowpenalty=10000%		discourage widows
\displaywidowpenalty=10000%	discourage widows

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Document's page style
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\marginparwidth}{0pt}
\makepagestyle   {formationpage}
\makerunningwidth{formationpage}{\headwidth}
\makeheadrule    {formationpage}{\headwidth}{\normalrulethickness}
\makerunningwidth{formationpage}{\headwidth}

\makeevenhead{formationpage}
  {\normalfont\bfseries\classname}%
  {}%
  {\normalfont\authorname}

\makeoddhead{formationpage}%
  {\normalfont\authorname}%
  {}%
  {\normalfont\bfseries\classname}

\makeevenfoot{formationpage}%
  {}%
  {\normalfont\thepage{} of \thelastpage}%
  {}
\makeoddfoot{formationpage}%
  {}%
  {\normalfont\thepage{} of \thelastpage}%
  {}

\pagestyle{formationpage}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% New commands:

\newcommand{\colorrule}[1]%
  {\color{#1}\hrulefill\normalcolor}

\newcommand{\noindentcolorrule}[1]%
  {\noindent\colorrule{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Formatting:

\newcommand{\term}[1]%	format terminology in italicized font
  {\textit{#1}}

\newcommand{\spec}[1]%	format special words in small caps
  {\textsc{\lowercase{#1}}}

\newcommand{\important}[1]% important callouts in bold red
  {\textbf{\color{red}#1}}


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

% ----------------------------------------------------------------------
% Topmatter
% ----------------------------------------------------------------------
\newcommand{\topmatter}%
{%
\flushbottom
\raggedbottomsectiontrue
\thispagestyle{empty}
\pagenumbering{arabic}

\begin{center}
  {\HUGE\classname}
  { \vskip\baselineskip }
  { \classdate } \\
  { \authorname } \\
\end{center}

} % end of \topmatter definition

\ifthenelse{ \boolean{screen} }
{%
\setstocksize{6.25in}{8in}
\usepackage[screen,nopanel]{pdfscreen}
 \margins{0.65in}{0.65in}{0.65in}{0.65in}
 \screensize{6.25in}{8in}
}{}
