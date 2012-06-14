% collected graphics of job "generic-talk-15min-45min"
mpgraph:=4000;
randomseed:=20;
_special_div_ := 10000; 
if unknown context_tool: input mp-tool; fi;
if unknown context_spec: input mp-spec; fi;
if unknown context_grph: input mp-grph; fi;

graphictextformat:="context";
graphictextdirective "\global \loadfontfileoncetrue ";

string contextversion;
contextversion:="2008.05.21 15:21";

boolean collapse_data; collapse_data:=true;
def data_mpd_file = "generic-talk-15min-45min-mp.mpd" enddef ;
def data_mpo_file = "generic-talk-15min-45min-mp.mpo" enddef ;
def data_mpy_file = "generic-talk-15min-45min-mp.mpy" enddef ;


color OverlayColor,OverlayLineColor;

def initialize_form_numbers =
do_initialize_numbers;
enddef;

vardef ForegroundBox =
unitsquare xysized(HSize,VSize)
enddef ;
vardef PageFraction =
if 1>1: (1-1)/(1-1) else: 1 fi
enddef ;

string txtfile ; txtfile := "generic-talk-15min-45min-mpgraph.mpb" ;
string txtfont ; txtfont := "texnansi-lmtt10" ;
string txtpref ; txtpref := "00001::::" ;

if unknown context_page: input mp-page; fi;

boolean PageStateAvailable,OnRightPage,InPageBody;
PageStateAvailable:=true;

path PlainTextArea;

if unknown context_core : input mp-core.mp ; fi ;
;
defaultfont:="ec-qbkr";
defaultscale:=17.0pt/10pt;

cmykcolors:=true;
spotcolors:=true;

OverlayWidth:=600.0pt  ;
OverlayHeight:=450.0pt  ;
OverlayDepth:=450.0pt  ;
OverlayColor:=(0,0,0);
OverlayLineWidth:=0.0pt ;
OverlayLineColor:=(0,0,0);
BaseLineSkip:=23.08604pt;
LineHeight:=23.08604pt;
BodyFontSize:=17.0pt;
TopSkip:=17.0pt;
StrutHeight:=16.62198pt;
StrutDepth:=6.46405pt;
CurrentWidth:=600.0pt;
CurrentHeight:=450.0pt;
EmWidth:=17.0pt;
ExHeight:=8.24501pt;
PageNumber:=1;
RealPageNumber:=1;
LastPageNumber:= 1;

prologues:=1;
mpprocset:=1;

HSize:=600.0pt;
VSize:=450.0pt;

mp_shade_version := 2 ;

OnRightPage:=true;
InPageBody:=true ;

def LoadPageState =
OnRightPage:=true;
OnOddPage:=true;
RealPageNumber:=1;
PageNumber:=1;
NOfPages:=1;
PaperHeight:=450.0pt;
PaperWidth:=600.0pt;
PrintPaperHeight:=450.0pt;
PrintPaperWidth:=600.0pt;
TopSpace:=22.76228pt;
BottomSpace:=22.76228pt;
BackSpace:=56.9055pt;
CutSpace:=56.9055pt;
MakeupHeight:=404.47543pt;
MakeupWidth:=486.189pt;
TopHeight:=0.0pt;
TopDistance:=0.0pt;
HeaderHeight:=51.21495pt;
HeaderDistance:=0.0pt;
TextHeight:=353.26048pt;
FooterDistance:=0.0pt;
FooterHeight:=0.0pt;
BottomDistance:=0.0pt;
BottomHeight:=0.0pt;
LeftEdgeWidth:=0.0pt;
LeftEdgeDistance:=0.0pt;
LeftMarginWidth:=56.9055pt;
LeftMarginDistance:=22.76228pt;
TextWidth:=486.189pt;
RightMarginDistance:=0.0pt;
RightMarginWidth:=56.9055pt;
RightEdgeDistance:=0.0pt;
RightEdgeWidth:=0.0pt;
InnerMarginDistance:=22.76228pt;
InnerMarginWidth:=56.9055pt;
OuterMarginDistance:=0.0pt;
OuterMarginWidth:=56.9055pt;
InnerEdgeDistance:=0.0pt;
InnerEdgeWidth:=0.0pt;
OuterEdgeDistance:=0.0pt;
OuterEdgeWidth:=0.0pt;
PageOffset:=0.0pt;
PageDepth:=0.0pt;
LayoutColumns:=1;
LayoutColumnDistance:=0.0pt;
LayoutColumnWidth:=486.189pt;
enddef;

ResetTextAreas;
;
SaveTextAreas;
ResetTextAreas;
;
;
PlainTextArea:=boundingbox((0pt,0pt)--(0pt,0pt)
shifted (0pt,0pt));

local_multi_par_area:=false;
;
let mprunend = end ;
beginfig(4000);
StartPage ;
fill Page withcolor (scaledrgb(0.8,0.8,0.9,1)) ;
fill Field[Text][Text] enlarged 0.2cm
withcolor (scaledgray(.88,1)) ;
StopPage ;

endfig;
let end=mprunend;
