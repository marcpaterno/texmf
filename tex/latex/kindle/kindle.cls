%------------------------------------------------------------
%  Identification
%------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kindle}[2011/02/02]

%------------------------------------------------------------
%  Initial code
%------------------------------------------------------------
\RequirePackage{ifthen}
\newboolean{draftmode}
\newboolean{contentsmode}

%------------------------------------------------------------
%  Declaration of options
%------------------------------------------------------------
\DeclareOption{draftmode}{\setboolean{draftmode}{true}}
\DeclareOption{contentsmode}{\setboolean{contentsmode}{true}}

%------------------------------------------------------------
%  Execution of options
%------------------------------------------------------------
\ProcessOptions

%------------------------------------------------------------
%  Package loading
%------------------------------------------------------------
\LoadClass[9pt,oneside,article]{memoir}

\usepackage
  { amsfonts%       extra mathematical fonts
  , bookman%        still the best
%  , palatino%
%  , pxfonts%
%  , mathpazo%
  , booktabs%     "publication quality tables"
  , color%        color capability
  , graphicx%     incorporate images
  , ifthen%       conditional source
  , xspace%       space character unless punctuation follows
  , varioref%     More flexible cross-references
  , microtype%
  }

\usepackage%
    [ pdfpagelabels%
    , pdftex%
%    , dvipdfm%
%    , dvips
    , pdfstartview={FitV}%
    , pdfpagemode={None}%
    , pdfpagelayout=Facing%
    ]%
    {hyperref}

\usepackage{memhfixc}%      ensure hyperref/memoir compatability

%------------------------------------------------------------
%  Main code
%------------------------------------------------------------

\ifthenelse{\boolean{draftmode}}
 {%
  \definecolor{draftcolor}{rgb}{1.0,1.0,0.5}%  Yellow
  \usepackage[draft]{pdfdraftcopy} %"DRAFT" watermark
  \draftstring{DRAFT \RCSRevision}
  \draftcolor{draftcolor}
  \draftfontfamily{ptm}%{hlh}
  \draftfontsize{100}
  \draftangle{45}
%  \draftfontattrib{\upshape}
 }{}

%\renewcommand{\chapterautorefname}{\S}% use section symbol to refer to chapters
%\renewcommand{\sectionautorefname}{\S}% use section symbol to refer to sections

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% General document parameters and settings:

\settypeblocksize{57\onelineskip}{39pc}{*}  % for 9-pt type
\setstocksize{120mm}{90mm}
\settrimmedsize{120mm}{90mm}{*}
\settypeblocksize{100mm}{75mm}{1}
\setulmargins{5mm}{*}{*}
\setlrmargins{*}{*}{1}
\setheaderspaces{*}{*}{1.618}

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
\setlength{\cftbeforechapterskip}{0in}
\setlength{\cftbeforesectionskip}{0in}

\setlength  {\parskip     }{.5\baselineskip}
\addtolength{\footnotesep }{.5\baselineskip}

\checkandfixthelayout

\vfuzz2pt   % don't report over-full v-boxes if over-edge is small
\hfuzz2pt   % don't report over-full h-boxes if over-edge is small

\clubpenalty=10000%     discourage widows
\widowpenalty=10000%        discourage widows
\displaywidowpenalty=10000% discourage widows

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Document's page style
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\docversion}{Revision~\RCSRevision}

\setlength{\headwidth}{\textwidth}
\makepagestyle   {kindlepage}
\makerunningwidth{kindlepage}{\headwidth}
\makeheadrule    {kindlepage}{\headwidth}{\normalrulethickness}
\makerunningwidth{kindlepage}{\headwidth}

\ifthenelse{\boolean{draftmode}}
{%
\makeoddhead     {kindlepage}%
  {\normalfont\bfseries\shorttitle}%
  {}%
  {}%
\makeevenhead    {kindlepage}%
  {}%
  {}%
  {}%
}{%
\makeoddhead     {kindlepage}%
  {\normalfont\bfseries\shorttitle}%
  {}%
  {}%
\makeevenhead    {kindlepage}%
  {}%
  {}%
  {}%
}

\pagestyle       {kindlepage}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% New commands:

\newcommand{\colorrule}[1]%
  {\color{#1}\hrulefill\normalcolor}

\newcommand{\noindentcolorrule}[1]%
  {\noindent\colorrule{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Formatting:

\newcommand{\term}[1]%  format terminology in italicized font
  {\textit{#1}\xspace}

\newcommand{\spec}[1]%  format special words in small caps
  {\textsc{\lowercase{#1}}\xspace}

\newcommand{\classname}[1]% format class names in italics
  {\textit{#1}\xspace}

\newcommand{\conceptname}[1]% format concept names in sans-serif
  {\textsf{#1}\xspace}

\newcommand{\productname}[1]% format product names in small caps
 {\textsc{#1}\xspace}

\newcommand{\patternname}[1]
 {\textsf{#1}\xspace}

\newcommand{\code}[1]% inlined (non-C++ code)?, filenames, etc.
  {\texttt{#1}\xspace}

\newcommand{\cpp}%              'C++'
  {C\kern-0.15ex{+}\kern-0.1ex{+}\xspace}

\newenvironment{fixme}%  format notes during document preparation
  {\sffamily\slshape\color{red}}%
  {} % \rmfamily\upshape\normalcolor

\newenvironment{signednote}[1]% format addition attributed to an author
 {\vskip\parskip\hrule height .1pt depth .1pt \slshape Commentary from:~#1 \upshape\vskip\parskip}%
 {\vskip 0.5\parskip \hrule height .1pt depth .1pt}

%----------------------------------------
% Unanswered questions.
% These are:
%  1) typeset in their own environment
%  2) written to a contents listing (similar to 'list of figures')
%  3) numbered by their own numbering scheme
%
% Note that the question environment is *not* a floating environment.
%----------------------------------------
\newcommand{\listquestionname}{List of Unanswered Questions}
\newlistof{listofquestions}{qst}{\listquestionname}
\newcounter{nquestion}
\newlistentry{nquestion}{qst}{0}
\newenvironment{question}[1]%
 {%
  \fquestion{#1}%
  \newlength{\oldparskip}%
  \setlength{\oldparskip}{\parskip}%
  \newlength{\oldparindent}%
  \setlength{\oldparindent}{\parindent}%
  \begin{center}%
  \begin{minipage}{0.85\textwidth}%
  \setlength{\parindent}{\oldparindent}%
  \setlength{\parskip}{\oldparskip}%
 }%
 {\end{minipage}\end{center}} 

\newcommand{\fquestion}[1]{% format unanswered questions; list created
 \refstepcounter{nquestion}%
 \par\noindent\textbf{Unanswered Question \thenquestion}: {#1}%
 \addcontentsline{qst}{nquestion}{\protect\numberline{\thenquestion}#1}%
}


\newenvironment{program}%
  {\begin{fprogram}[!htb]%
  \begin{center}%
  \precaption{\rule{\linewidth}{0.4pt}\par\vspace{2mm}}%
  \postcaption{\rule{\linewidth}{0.4pt}}%
  \captiontitlefont{\small\sffamily}%
  \begin{minipage}[b]{13.5cm}%
  }%
  {\hrule\end{minipage}\end{center}%
  \end{fprogram}%
  }

\newcommand{\struct}{\cppcode{struct}}
\newcommand{\class}{\cppcode{class}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Symbols:

\newcommand{\middot}{$\cdot$\xspace}% raised dot

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Abbreviations for general use:

\newcommand{\adhoc}{\textit{ad hoc}\xspace}%  ad hoc
\newcommand{\eg   }{\textit{e.g.},\xspace}%   e.g.,
\newcommand{\etal }{\textit{et al.}\xspace}%  et al.
\newcommand{\etc  }{\textit{etc}\xspace}%     etc.
\newcommand{\ie   }{\textit{i.e.},\xspace}%   i.e.,
\newcommand{\qv   }{\textit{q.v.}\xspace}%    q.v.
\newcommand{\sic  }{\textit{sic}\xspace}%     sic
\newcommand{\via  }{\textit{via}\xspace}%     via
\newcommand{\viz  }{\textit{viz.}\xspace}%    viz.

\setlength{\epigraphwidth}{.65\textwidth}
\setlength{\epigraphrule}{0pt}

\epigraphtextposition{flushright}

\newcommand{\topmatter}%
{%
\thispagestyle{empty}
\flushbottom
\raggedbottomsectiontrue
\begin{center}
  {\Huge\doctitle}
  { \vskip\baselineskip }
  { \docauthor }
  { \vskip\baselineskip }
  { \docdate }
\end{center}

\ifthenelse{\boolean{contentsmode}}
{%  
\tableofcontents*
}{% false stuff
}
\vfill
}
