\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ttm4502} [2018/09/06 v1.1 LaTeX2e IIK-TRD Pre-project document class]

% Language options
\def\lang{USenglish}
\DeclareOption{norsk}{\def\lang{norsk}}
\DeclareOption{nynorsk}{\def\lang{nynorsk}}
\DeclareOption{UKenglish}{\def\lang{UKenglish}}
\DeclareOption{USenglish}{\def\lang{USenglish}}

% Base class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[10pt,b5paper]{article}

% Fixes
\RequirePackage{etex}
\RequirePackage{iftex}

% Colors
\RequirePackage{xcolor}

% Text and encoding
\ifPDFTeX
   \RequirePackage[utf8]{inputenc}
   \RequirePackage[T1]{fontenc}
   \RequirePackage{lmodern}
   \RequirePackage[scaled=.80]{helvet}
\else
   \ifXeTeX
     \RequirePackage{xltxtra}
   \else 
     \RequirePackage{luatextra}
   \fi
   \defaultfontfeatures{Ligatures=TeX}
\fi

% Language
\RequirePackage{babel}
\let\andname\@empty
\let\lastandname\@empty
\let\studentname\@empty
\let\studentnames\@empty
\let\professorname\@empty
\let\supervisorname\@empty
\let\supervisornames\@empty

\addto{\captionsUKenglish}{\renewcommand{\andname}{and}}
\addto{\captionsUKenglish}{\renewcommand{\lastandname}{\unskip, and}}
\addto{\captionsUKenglish}{\renewcommand{\studentname}{Student}}
\addto{\captionsUKenglish}{\renewcommand{\studentnames}{Students}}
\addto{\captionsUKenglish}{\renewcommand{\supervisorname}{Supervisor}}
\addto{\captionsUKenglish}{\renewcommand{\supervisornames}{Supervisors}}
\addto{\captionsUKenglish}{\renewcommand{\professorname}{Responsible professor}}

\addto{\captionsUSenglish}{\renewcommand{\lastandname}{\unskip, and}}
\addto{\captionsUSenglish}{\renewcommand{\andname}{and}}
\addto{\captionsUSenglish}{\renewcommand{\studentname}{Student}}
\addto{\captionsUSenglish}{\renewcommand{\studentnames}{Students}}
\addto{\captionsUSenglish}{\renewcommand{\supervisorname}{Supervisor}}
\addto{\captionsUSenglish}{\renewcommand{\supervisornames}{Supervisors}}
\addto{\captionsUSenglish}{\renewcommand{\professorname}{Responsible professor}}

\addto{\captionsnorsk}{\renewcommand{\andname}{og}}
\addto{\captionsnorsk}{\renewcommand{\lastandname}{\unskip, og}}
\addto{\captionsnorsk}{\renewcommand{\studentname}{Student}}
\addto{\captionsnorsk}{\renewcommand{\studentnames}{Studenter}}
\addto{\captionsnorsk}{\renewcommand{\supervisorname}{Veileder}}
\addto{\captionsnorsk}{\renewcommand{\supervisornames}{Veiledere}}
\addto{\captionsnorsk}{\renewcommand{\professorname}{Ansvarlig faglærer}}

\addto{\captionsnynorsk}{\renewcommand{\andname}{og}}
\addto{\captionsnynorsk}{\renewcommand{\lastandname}{\unskip, og}}
\addto{\captionsnynorsk}{\renewcommand{\studentname}{Student}}
\addto{\captionsnynorsk}{\renewcommand{\studentnames}{Studentar}}
\addto{\captionsnynorsk}{\renewcommand{\supervisorname}{Rettleiar}}
\addto{\captionsnynorsk}{\renewcommand{\supervisornames}{Rettleiarar}}
\addto{\captionsnynorsk}{\renewcommand{\professorname}{Ansvarleg faglærar}}


% Layout
\RequirePackage[top=7pc, bottom=7pc, left=23.875mm, right=23.875mm]{geometry}

% Abstract
\addto{\captionsUSenglish}{\renewcommand{\abstractname}{Summary}}
\addto{\captionsUKenglish}{\renewcommand{\abstractname}{Summary}}

% Hyphenation, kerning
\RequirePackage{microtype}

% Spacing
\RequirePackage{setspace}
\setstretch{1.1}

% Paragraphs
\clubpenalty  = 5000
\widowpenalty = 5000

\setlength{\parindent}{1.5em}
\setlength{\parskip}{1em}

% Float positioning
\RequirePackage{afterpage}

% Lists
\RequirePackage{enumitem}
\RequirePackage{textcomp}
\renewcommand{\labelitemi}{\textendash}
\renewcommand{\labelitemii}{\textopenbullet}
\setlist{topsep=-1em,itemsep=0em,parsep=0pt,partopsep=0pt}

% Columns
\RequirePackage{multicol}

% Tables
\RequirePackage{tabularx}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\renewcommand{\arraystretch}{1.2}

% Links
\RequirePackage{hyperref}
\RequirePackage{memhfixc}
\hypersetup{
  colorlinks=true, 
  urlcolor=black, 
  linkcolor=black,
  citecolor=black
}
\urlstyle{same}

% Graphics
\RequirePackage{graphicx}
\RequirePackage{pdfpages}
\RequirePackage{wrapfig}
\RequirePackage{ccaption}
\captionnamefont{\bfseries}

% Mathematics
\RequirePackage{amsmath}
\RequirePackage{amscd}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{needspace}

\newtheoremstyle{atheorem}%               % Name
  {}%                                     % Space above
  {}%                                     % Space below
  {\itshape}%                             % Body font
  {}%                                     % Indent amount
  {\bfseries}%                            % Theorem head font
  {}%                                     % Punctuation after theorem head
  { }%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1}\thmnumber{ #2. }\thmnote{ #3}}%  % Theorem head spec (can be left empty, meaning `normal')

\newtheoremstyle{adefinition}%            % Name
  {}%                                     % Space above
  {}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\bfseries}%                            % Theorem head font
  {}%                                     % Punctuation after theorem head
  { }%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1}\thmnumber{ #2. }\thmnote{ #3}}%  % Theorem head spec (can be left empty, meaning `normal')
  

\theoremstyle{atheorem} 

\newtheorem{theorem}{Theorem}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{conjecture}[theorem]{Conjecture}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}

\theoremstyle{adefinition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{finalremark}[theorem]{Final Remark}
\newtheorem{remark}[theorem]{Remark}
\newtheorem{observation}[theorem]{Observation}
\newtheorem{example}[theorem]{Example}
\newtheorem{recommendation}{Recommendation}
\newtheorem{question}{Question}

\newcommand\xqed[1]{%
  \leavevmode\unskip\penalty9999 \hbox{}\nobreak\hfill
  \quad\hbox{#1}}
\newcommand\exampleqed{\xqed{$\triangle$}}

% Code
\RequirePackage{listings}
\RequirePackage{algorithm}
\RequirePackage{algorithmicx}
\RequirePackage{algpseudocode}

\renewcommand\maketitle{
  \begingroup
    \parindent=\z@
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \newpage
    \global\@topnum\z@   % Prevents figures from going at top of page.
    \@maketitle
  \endgroup
  \renewcommand{\sfdefault}{lmss}

}

\newcounter{@auth}
\newcounter{@supv}
\newcounter{@name}
\newcounter{@names}
\def\auth{1}
\def\supv{2}
\newcommand{\student}[1]{\author{#1}}
\let\@professor\@empty
\newcommand{\professor}[1]{\def\@professor{#1}}
\let\@supervisor\@empty
\newcommand{\supervisor}[1]{\def\@supervisor{#1}}
\let\names\undefined

\def\@maketitle{
 \def\lastand{\if\names\auth\value{@names}=\value{@auth}\else\value{@names}=\value{@supv}\fi
              \ifnum\value{@names}=2\relax
                 \unskip{} \andname\
              \else
                 \unskip \lastandname\
              \fi}%
 \def\and{\if\names\auth\value{@names}=\value{@auth}\else\value{@names}=\value{@supv}\fi
          \stepcounter{@name}\relax
          \ifnum\value{@name}=\value{@names}%
             \lastand
          \else
             \unskip,
          \fi}%
 {%
 \setbox0=\vbox{\setcounter{@name}{1}\def\and{\stepcounter{@name}}\@author}
 \global\value{@auth}=\value{@name}%
 \setbox1=\vbox{\setcounter{@name}{1}\def\and{\stepcounter{@name}}\@supervisor}
 \global\value{@supv}=\value{@name}%
 \setcounter{@name}{1}%
 \renewcommand{\arraystretch}{1}
 \fontfamily{phv}\selectfont
 \sffamily
 TTM4502 -- \the\year\par
 \vskip -.1cm
 \begin{tabular}{|p{.9652\textwidth}|}
 \hline
 \setcounter{@name}{1}%
 \global\let\names\auth%
 \ifnum\value{@auth}=1\relax\studentname\else\studentnames\fi: \@author\\
 \setcounter{@name}{1}%
 \global\let\names\supv%
 \ifnum\value{@supv}=1\relax\supervisorname\else\supervisornames\fi: \@supervisor\\
 \professorname: \@professor\\\hline
 \end{tabular}
 \vskip 1.2cm
 }
 \begin{center}%
 \let\newline\\
 {
  \Large \bfseries\boldmath
  \pretolerance=10000
  \@title \par}
 \end{center}%
 }
 
\renewenvironment{abstract}{%
      \list{}{\advance\topsep by0.35cm\relax\small
      \leftmargin=1cm
      \labelwidth=\z@
      \listparindent=\z@
      \itemindent\listparindent
      \rightmargin\leftmargin}\item[\hskip\labelsep
                                    \bfseries\abstractname.]}
    {\endlist}

\renewcommand\section{\@startsection{section}{1}{\z@}%
                       {-12\p@ \@plus -2\p@ \@minus -2\p@}%
                       {4\p@ \@plus 2\p@ \@minus 2\p@}%
                       {\normalfont\large\bfseries\boldmath
                        \rightskip=\z@ \@plus 4em\pretolerance=10000 }}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                       {-4\p@ \@plus -2\p@ \@minus -2\p@}%
                       {0.1\p@ \@plus 2\p@ \@minus 2\p@}%
                       {\normalfont\normalsize\bfseries\boldmath
                        \rightskip=\z@ \@plus 4em\pretolerance=10000 }}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                       {-2\p@ \@plus -2\p@ \@minus -2\p@}%
                       {-0.5em \@plus -0.22em \@minus -0.1em}%
                       {\normalfont\normalsize\bfseries\boldmath}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                       {-2\p@ \@plus -2\p@ \@minus -2\p@}%
                       {-0.5em \@plus -0.22em \@minus -0.1em}%
                       {\normalfont\normalsize\itshape}}
\renewcommand\subparagraph[1]{\typeout{Warning: You should not use
                  \string\subparagraph\space with this class}\vskip0.5cm
You should not use \verb|\subparagraph| with this class.\vskip0.5cm}
