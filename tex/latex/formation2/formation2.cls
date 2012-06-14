%------------------------------------------------------------
%  Identification
%------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{formation2}[2007/12/08]

%------------------------------------------------------------
%  Initial code
%------------------------------------------------------------
\RequirePackage{ifthen}

%------------------------------------------------------------
%  Declaration of options
%------------------------------------------------------------

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


\tightlists

%------------------------------------------------------------
%  Main code
%------------------------------------------------------------


%------------------------------------------------------------
%% General document parameters and settings:
%------------------------------------------------------------

\vfuzz2pt	% don't report over-full v-boxes if over-edge is small
\hfuzz2pt	% don't report over-full h-boxes if over-edge is small

\clubpenalty=10000%		discourage widows
\widowpenalty=10000%		discourage widows
\displaywidowpenalty=10000%	discourage widows

%------------------------------------------------------------
% Document's page style
%------------------------------------------------------------
\setlength{\marginparwidth}{0pt}
\makepagestyle   {formation2page}
\makerunningwidth{formation2page}{\headwidth}
\makeheadrule    {formation2page}{\headwidth}{\normalrulethickness}
\makerunningwidth{formation2page}{\headwidth}

\makeevenhead{formation2page}
  {\normalfont\bfseries\classname}%
  {}%
  {\normalfont\authorname}

\makeoddhead{formation2page}%
  {\normalfont\authorname}%
  {}%
  {\normalfont\bfseries\classname}

\makeevenfoot{formation2page}%
  {}%
  {\normalfont\thepage{} of \thelastpage}%
  {}
\makeoddfoot{formation2page}%
  {}%
  {\normalfont\thepage{} of \thelastpage}%
  {}

\pagestyle{formation2page}
%------------------------------------------------------------
% New commands:
%------------------------------------------------------------

\newcommand{\colorrule}[1]%
  {\color{#1}\hrulefill\normalcolor}

\newcommand{\noindentcolorrule}[1]%
  {\noindent\colorrule{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Environments

% Italicized quotation, used for introductory paragraphs.
\newenvironment{intro}%
{\begin{quote}\itshape}%
{\end{quote}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Formatting:

\newcommand{\term}[1]%	format terminology in italicized font
  {\textit{#1}}

\newcommand{\spec}[1]%	format special words in small caps
  {\textsc{\lowercase{#1}}}

\newcommand{\important}[1]% important callouts in bold red
  {\textbf{\color{red}#1}}


%------------------------------------------------------------
% Symbols:
\newcommand{\middot}{$\cdot$\xspace}% raised dot
%------------------------------------------------------------

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
  { Aurora group } \\
  { \authorname } \\
\end{center}

} % end of \topmatter definition
