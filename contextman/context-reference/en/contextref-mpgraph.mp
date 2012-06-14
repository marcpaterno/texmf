% collected graphics of job "contextref"
mpgraph:=4000;
randomseed:=0;
_special_div_ := 10000; 
if unknown context_tool: input mp-tool; fi;
if unknown context_spec: input mp-spec; fi;
if unknown context_grph: input mp-grph; fi;

graphictextformat:="context";
graphictextdirective "\global \loadfontfileoncetrue ";

string contextversion;
contextversion:="2008.05.21 15:21";

boolean collapse_data; collapse_data:=true;
def data_mpd_file = "contextref-mp.mpd" enddef ;
def data_mpo_file = "contextref-mp.mpo" enddef ;
def data_mpy_file = "contextref-mp.mpy" enddef ;


color OverlayColor,OverlayLineColor;

def initialize_form_numbers =
do_initialize_numbers;
enddef;

vardef ForegroundBox =
unitsquare xysized(HSize,VSize)
enddef ;
vardef PageFraction =
if 6>1: (6-1)/(6-1) else: 1 fi
enddef ;

string txtfile ; txtfile := "contextref-mpgraph.mpb" ;
string txtfont ; txtfont := "texnansi-lmtt10" ;
string txtpref ; txtpref := "00001::::" ;

if unknown context_page: input mp-page; fi;

boolean PageStateAvailable,OnRightPage,InPageBody;
PageStateAvailable:=true;

path PlainTextArea;

if unknown context_core : input mp-core.mp ; fi ;
;
color gray; gray := (.95,.95,.95);
defaultfont:="pplr8t";
defaultscale:=11.0pt/10pt;

cmykcolors:=true;
spotcolors:=true;

OverlayWidth:=84.95827pt  ;
OverlayHeight:=50.97546pt  ;
OverlayDepth:=50.97546pt  ;
OverlayColor:=(0,0,0);
OverlayLineWidth:=0.4pt ;
OverlayLineColor:=(0,0,0);
BaseLineSkip:=14.44502pt;
LineHeight:=14.44502pt;
BodyFontSize:=11.0pt;
TopSkip:=11.0pt;
StrutHeight:=10.40042pt;
StrutDepth:=4.04459pt;
CurrentWidth:=84.95827pt;
CurrentHeight:=50.97546pt;
EmWidth:=11.0pt;
ExHeight:=5.15894pt;
PageNumber:=4;
RealPageNumber:=6;
LastPageNumber:= 6;

prologues:=1;
mpprocset:=1;

HSize:=84.95827pt;
VSize:=50.97546pt;

mp_shade_version := 2 ;

OnRightPage:=true;
InPageBody:=false ;

def LoadPageState =
OnRightPage:=false;
OnOddPage:=false;
RealPageNumber:=6;
PageNumber:=4;
NOfPages:=6;
PaperHeight:=794.96999pt;
PaperWidth:=614.295pt;
PrintPaperHeight:=794.96999pt;
PrintPaperWidth:=614.295pt;
TopSpace:=42.67912pt;
BottomSpace:=42.67912pt;
BackSpace:=71.13188pt;
CutSpace:=87.91904pt;
MakeupHeight:=709.61174pt;
MakeupWidth:=455.24408pt;
TopHeight:=0.0pt;
TopDistance:=0.0pt;
HeaderHeight:=53.53091pt;
HeaderDistance:=0.0pt;
TextHeight:=602.54991pt;
FooterDistance:=0.0pt;
FooterHeight:=53.53091pt;
BottomDistance:=0.0pt;
BottomHeight:=0.0pt;
LeftEdgeWidth:=0.0pt;
LeftEdgeDistance:=0.0pt;
LeftMarginWidth:=71.13188pt;
LeftMarginDistance:=7.11317pt;
TextWidth:=455.24408pt;
RightMarginDistance:=7.11317pt;
RightMarginWidth:=71.13188pt;
RightEdgeDistance:=0.0pt;
RightEdgeWidth:=0.0pt;
InnerMarginDistance:=7.11317pt;
InnerMarginWidth:=71.13188pt;
OuterMarginDistance:=7.11317pt;
OuterMarginWidth:=71.13188pt;
InnerEdgeDistance:=0.0pt;
InnerEdgeWidth:=0.0pt;
OuterEdgeDistance:=0.0pt;
OuterEdgeWidth:=0.0pt;
PageOffset:=0.0pt;
PageDepth:=0.0pt;
LayoutColumns:=1;
LayoutColumnDistance:=0.0pt;
LayoutColumnWidth:=455.24408pt;
enddef;

ResetTextAreas;
;
SaveTextAreas;
ResetTextAreas;
;
;
PlainTextArea:=boundingbox((0pt,0pt)--(0pt,0pt)
shifted (0pt,0pt));

local_multi_par_area:=true;
;
let mprunend = end ;
beginfig(4000);
path p; p := fullcircle xscaled 84.95827pt   yscaled 50.97546pt  ; pickup pencircle scaled 2pt; fill p withcolor (scaledgray(.95,1)); draw p withcolor (scaledrgb(0,.6,0,1)); 
endfig;
let end=mprunend;
defaultfont:="pplr8t";
defaultscale:=11.0pt/10pt;

cmykcolors:=true;
spotcolors:=true;

OverlayWidth:=170.71652pt  ;
OverlayHeight:=142.26378pt  ;
OverlayDepth:=142.26378pt  ;
OverlayColor:=(0,0,0);
OverlayLineWidth:=0.4pt ;
OverlayLineColor:=(0,0,0);
BaseLineSkip:=14.44502pt;
LineHeight:=14.44502pt;
BodyFontSize:=11.0pt;
TopSkip:=11.0pt;
StrutHeight:=10.40042pt;
StrutDepth:=4.04459pt;
CurrentWidth:=170.71652pt;
CurrentHeight:=142.26378pt;
EmWidth:=11.0pt;
ExHeight:=5.15894pt;
PageNumber:=4;
RealPageNumber:=6;
LastPageNumber:= 6;

prologues:=1;
mpprocset:=1;

HSize:=170.71652pt;
VSize:=142.26378pt;

mp_shade_version := 2 ;

OnRightPage:=true;
InPageBody:=false ;

def LoadPageState =
OnRightPage:=false;
OnOddPage:=false;
RealPageNumber:=6;
PageNumber:=4;
NOfPages:=6;
PaperHeight:=794.96999pt;
PaperWidth:=614.295pt;
PrintPaperHeight:=794.96999pt;
PrintPaperWidth:=614.295pt;
TopSpace:=42.67912pt;
BottomSpace:=42.67912pt;
BackSpace:=71.13188pt;
CutSpace:=87.91904pt;
MakeupHeight:=709.61174pt;
MakeupWidth:=455.24408pt;
TopHeight:=0.0pt;
TopDistance:=0.0pt;
HeaderHeight:=53.53091pt;
HeaderDistance:=0.0pt;
TextHeight:=602.54991pt;
FooterDistance:=0.0pt;
FooterHeight:=53.53091pt;
BottomDistance:=0.0pt;
BottomHeight:=0.0pt;
LeftEdgeWidth:=0.0pt;
LeftEdgeDistance:=0.0pt;
LeftMarginWidth:=71.13188pt;
LeftMarginDistance:=7.11317pt;
TextWidth:=455.24408pt;
RightMarginDistance:=7.11317pt;
RightMarginWidth:=71.13188pt;
RightEdgeDistance:=0.0pt;
RightEdgeWidth:=0.0pt;
InnerMarginDistance:=7.11317pt;
InnerMarginWidth:=71.13188pt;
OuterMarginDistance:=7.11317pt;
OuterMarginWidth:=71.13188pt;
InnerEdgeDistance:=0.0pt;
InnerEdgeWidth:=0.0pt;
OuterEdgeDistance:=0.0pt;
OuterEdgeWidth:=0.0pt;
PageOffset:=0.0pt;
PageDepth:=0.0pt;
LayoutColumns:=1;
LayoutColumnDistance:=0.0pt;
LayoutColumnWidth:=455.24408pt;
enddef;

ResetTextAreas;
;
SaveTextAreas;
ResetTextAreas;
;
;
PlainTextArea:=boundingbox((0pt,0pt)--(0pt,0pt)
shifted (0pt,0pt));

local_multi_par_area:=true;
;
let mprunend = end ;
beginfig(3999);
path p; p := fullcircle xscaled 170.71652pt   yscaled 142.26378pt  ; pickup pencircle scaled 2pt; fill p withcolor (scaledgray(.95,1)); draw p withcolor (scaledrgb(0,.6,0,1)); 
endfig;
let end=mprunend;
defaultfont:="pplr8t";
defaultscale:=11.0pt/10pt;

cmykcolors:=true;
spotcolors:=true;

OverlayWidth:=455.24408pt  ;
OverlayHeight:=602.54991pt  ;
OverlayDepth:=602.54991pt  ;
OverlayColor:=(0,0,0);
OverlayLineWidth:=0pt ;
OverlayLineColor:=(0,0,0);
BaseLineSkip:=-1000.0pt;
LineHeight:=-1000.0pt;
BodyFontSize:=11.0pt;
TopSkip:=11.0pt;
StrutHeight:=10.40042pt;
StrutDepth:=4.04459pt;
CurrentWidth:=455.24408pt;
CurrentHeight:=602.54991pt;
EmWidth:=11.0pt;
ExHeight:=5.15894pt;
PageNumber:=15;
RealPageNumber:=17;
LastPageNumber:= 17;

prologues:=1;
mpprocset:=1;

HSize:=455.24408pt;
VSize:=602.54991pt;

mp_shade_version := 2 ;

OnRightPage:=true;
InPageBody:=false ;

def LoadPageState =
OnRightPage:=true;
OnOddPage:=true;
RealPageNumber:=17;
PageNumber:=15;
NOfPages:=17;
PaperHeight:=794.96999pt;
PaperWidth:=614.295pt;
PrintPaperHeight:=794.96999pt;
PrintPaperWidth:=614.295pt;
TopSpace:=42.67912pt;
BottomSpace:=42.67912pt;
BackSpace:=71.13188pt;
CutSpace:=87.91904pt;
MakeupHeight:=709.61174pt;
MakeupWidth:=455.24408pt;
TopHeight:=0.0pt;
TopDistance:=0.0pt;
HeaderHeight:=53.53091pt;
HeaderDistance:=0.0pt;
TextHeight:=602.54991pt;
FooterDistance:=0.0pt;
FooterHeight:=53.53091pt;
BottomDistance:=0.0pt;
BottomHeight:=0.0pt;
LeftEdgeWidth:=0.0pt;
LeftEdgeDistance:=0.0pt;
LeftMarginWidth:=71.13188pt;
LeftMarginDistance:=7.11317pt;
TextWidth:=455.24408pt;
RightMarginDistance:=7.11317pt;
RightMarginWidth:=71.13188pt;
RightEdgeDistance:=0.0pt;
RightEdgeWidth:=0.0pt;
InnerMarginDistance:=7.11317pt;
InnerMarginWidth:=71.13188pt;
OuterMarginDistance:=7.11317pt;
OuterMarginWidth:=71.13188pt;
InnerEdgeDistance:=0.0pt;
InnerEdgeWidth:=0.0pt;
OuterEdgeDistance:=0.0pt;
OuterEdgeWidth:=0.0pt;
PageOffset:=0.0pt;
PageDepth:=0.0pt;
LayoutColumns:=1;
LayoutColumnDistance:=0.0pt;
LayoutColumnWidth:=455.24408pt;
enddef;

ResetTextAreas;
;
SaveTextAreas;
ResetTextAreas;
;
;
PlainTextArea:=boundingbox((0pt,0pt)--(0pt,0pt)
shifted (0pt,0pt));

local_multi_par_area:=true;
;
let mprunend = end ;
beginfig(3998);
if unknown context_char : input mp-char.mp ; fi ; grid_width := 99.0pt; grid_height := 55.0pt; shape_width := 66.0pt; shape_height := 33.0pt; connection_line_width := 3.0pt; connection_smooth_size := 7.5pt; connection_arrow_size := 7.5pt; connection_dash_size := 7.5pt; begin_chart(0,3,2); reverse_y := true ; chart_offset := 2.75pt; chart_background_color := (scaledgray(.95,1)) ; begin_sub_chart ; shape_line_color := (scaledgray(.7,1)) ; shape_fill_color := (scaledgray(.9,1)) ; shape_line_width := 1.64993pt; peepshape := false ; new_shape(1,1,shape_procedure) ; end_sub_chart ; begin_sub_chart ; shape_line_color := (scaledgray(.7,1)) ; shape_fill_color := (scaledgray(.9,1)) ; shape_line_width := 1.64993pt; peepshape := false ; new_shape(1,2,shape_procedure) ; end_sub_chart ; begin_sub_chart ; shape_line_color := (scaledgray(.7,1)) ; shape_fill_color := (scaledgray(.9,1)) ; shape_line_width := 1.64993pt; peepshape := false ; new_shape(2,1,shape_procedure) ; end_sub_chart ; begin_sub_chart ; shape_line_color := (scaledgray(.7,1)) ; shape_fill_color := (scaledgray(.9,1)) ; shape_line_width := 1.64993pt; peepshape := false ; new_shape(2,2,shape_procedure) ; end_sub_chart ; begin_sub_chart ; shape_line_color := (scaledgray(.7,1)) ; shape_fill_color := (scaledgray(.9,1)) ; shape_line_width := 1.64993pt; peepshape := false ; new_shape(3,1,shape_procedure) ; end_sub_chart ; begin_sub_chart ; shape_line_color := (scaledgray(.7,1)) ; shape_fill_color := (scaledgray(.9,1)) ; shape_line_width := 1.64993pt; peepshape := false ; new_shape(3,2,shape_procedure) ; end_sub_chart ; smooth := true ; dashline := false ; arrowtip := true ; touchshape := true ; dsp_x := 0 ; dsp_y := 0 ;connection_line_color := (scaledrgb(0,.6,0,1)) ; connection_line_width := 3.0pt; connect_right_left(1,1,0) (2,1,0) ; dsp_x := 0 ; dsp_y := 0 ;smooth := true ; dashline := false ; arrowtip := true ; touchshape := true ; dsp_x := 0 ; dsp_y := 0 ;connection_line_color := (scaledrgb(0,.6,0,1)) ; connection_line_width := 3.0pt; connect_top_bottom(1,2,0) (1,1,0) ; dsp_x := 0 ; dsp_y := 0 ;smooth := true ; dashline := false ; arrowtip := true ; touchshape := true ; dsp_x := 0 ; dsp_y := 0 ;connection_line_color := (scaledrgb(0,.6,0,1)) ; connection_line_width := 3.0pt; connect_right_left(2,1,0) (3,1,0) ; dsp_x := 0 ; dsp_y := 0 ;smooth := true ; dashline := false ; arrowtip := true ; touchshape := true ; dsp_x := 0 ; dsp_y := 0 ;connection_line_color := (scaledrgb(0,.6,0,1)) ; connection_line_width := 3.0pt; connect_top_bottom(2,2,0) (2,1,0) ; dsp_x := 0 ; dsp_y := 0 ;smooth := true ; dashline := false ; arrowtip := true ; touchshape := true ; dsp_x := 0 ; dsp_y := 0 ;connection_line_color := (scaledrgb(0,.6,0,1)) ; connection_line_width := 3.0pt; connect_top_bottom(3,2,0) (3,1,0) ; dsp_x := 0 ; dsp_y := 0 ;clip_chart(1,1,3,2) ; end_chart ; 
endfig;
let end=mprunend;
defaultfont:="pplr8t";
defaultscale:=11.0pt/10pt;

cmykcolors:=true;
spotcolors:=true;

OverlayWidth:=455.24408pt  ;
OverlayHeight:=602.54991pt  ;
OverlayDepth:=602.54991pt  ;
OverlayColor:=(0,0,0);
OverlayLineWidth:=0pt ;
OverlayLineColor:=(0,0,0);
BaseLineSkip:=-1000.0pt;
LineHeight:=-1000.0pt;
BodyFontSize:=11.0pt;
TopSkip:=11.0pt;
StrutHeight:=10.40042pt;
StrutDepth:=4.04459pt;
CurrentWidth:=455.24408pt;
CurrentHeight:=602.54991pt;
EmWidth:=11.0pt;
ExHeight:=5.15894pt;
PageNumber:=15;
RealPageNumber:=17;
LastPageNumber:= 17;

prologues:=1;
mpprocset:=1;

HSize:=455.24408pt;
VSize:=602.54991pt;

mp_shade_version := 2 ;

OnRightPage:=true;
InPageBody:=false ;

def LoadPageState =
OnRightPage:=true;
OnOddPage:=true;
RealPageNumber:=17;
PageNumber:=15;
NOfPages:=17;
PaperHeight:=794.96999pt;
PaperWidth:=614.295pt;
PrintPaperHeight:=794.96999pt;
PrintPaperWidth:=614.295pt;
TopSpace:=42.67912pt;
BottomSpace:=42.67912pt;
BackSpace:=71.13188pt;
CutSpace:=87.91904pt;
MakeupHeight:=709.61174pt;
MakeupWidth:=455.24408pt;
TopHeight:=0.0pt;
TopDistance:=0.0pt;
HeaderHeight:=53.53091pt;
HeaderDistance:=0.0pt;
TextHeight:=602.54991pt;
FooterDistance:=0.0pt;
FooterHeight:=53.53091pt;
BottomDistance:=0.0pt;
BottomHeight:=0.0pt;
LeftEdgeWidth:=0.0pt;
LeftEdgeDistance:=0.0pt;
LeftMarginWidth:=71.13188pt;
LeftMarginDistance:=7.11317pt;
TextWidth:=455.24408pt;
RightMarginDistance:=7.11317pt;
RightMarginWidth:=71.13188pt;
RightEdgeDistance:=0.0pt;
RightEdgeWidth:=0.0pt;
InnerMarginDistance:=7.11317pt;
InnerMarginWidth:=71.13188pt;
OuterMarginDistance:=7.11317pt;
OuterMarginWidth:=71.13188pt;
InnerEdgeDistance:=0.0pt;
InnerEdgeWidth:=0.0pt;
OuterEdgeDistance:=0.0pt;
OuterEdgeWidth:=0.0pt;
PageOffset:=0.0pt;
PageDepth:=0.0pt;
LayoutColumns:=1;
LayoutColumnDistance:=0.0pt;
LayoutColumnWidth:=455.24408pt;
enddef;

ResetTextAreas;
;
SaveTextAreas;
ResetTextAreas;
;
;
PlainTextArea:=boundingbox((0pt,0pt)--(0pt,0pt)
shifted (0pt,0pt));

local_multi_par_area:=true;
;
let mprunend = end ;
beginfig(3997);
if unknown context_char : input mp-char.mp ; fi ; grid_width := 99.0pt; grid_height := 55.0pt; shape_width := 66.0pt; shape_height := 33.0pt; connection_line_width := 3.0pt; connection_smooth_size := 7.5pt; connection_arrow_size := 7.5pt; connection_dash_size := 7.5pt; begin_chart(0,2,2); reverse_y := true ; chart_offset := 2.75pt; chart_background_color := (scaledgray(.95,1)) ; begin_sub_chart ; shape_line_color := (scaledgray(.7,1)) ; shape_fill_color := (scaledgray(.9,1)) ; shape_line_width := 1.64993pt; peepshape := false ; new_shape(1,1,shape_procedure) ; end_sub_chart ; begin_sub_chart ; shape_line_color := (scaledgray(.7,1)) ; shape_fill_color := (scaledgray(.9,1)) ; shape_line_width := 1.64993pt; peepshape := false ; new_shape(1,2,shape_procedure) ; end_sub_chart ; begin_sub_chart ; shape_line_color := (scaledgray(.7,1)) ; shape_fill_color := (scaledgray(.9,1)) ; shape_line_width := 1.64993pt; peepshape := false ; new_shape(2,1,shape_procedure) ; end_sub_chart ; begin_sub_chart ; shape_line_color := (scaledgray(.7,1)) ; shape_fill_color := (scaledgray(.9,1)) ; shape_line_width := 1.64993pt; peepshape := false ; new_shape(2,2,shape_procedure) ; end_sub_chart ; smooth := true ; dashline := false ; arrowtip := true ; touchshape := true ; dsp_x := 0 ; dsp_y := 0 ;connection_line_color := (scaledrgb(0,.6,0,1)) ; connection_line_width := 3.0pt; connect_right_left(1,1,0) (2,1,0) ; dsp_x := 0 ; dsp_y := 0 ;smooth := true ; dashline := false ; arrowtip := true ; touchshape := true ; dsp_x := 0 ; dsp_y := 0 ;connection_line_color := (scaledrgb(0,.6,0,1)) ; connection_line_width := 3.0pt; connect_top_bottom(1,2,0) (1,1,0) ; dsp_x := 0 ; dsp_y := 0 ;smooth := true ; dashline := false ; arrowtip := true ; touchshape := true ; dsp_x := 0 ; dsp_y := 0 ;connection_line_color := (scaledrgb(0,.6,0,1)) ; connection_line_width := 3.0pt; connect_top_bottom(2,2,0) (2,1,0) ; dsp_x := 0 ; dsp_y := 0 ;clip_chart(1,1,2,2) ; end_chart ; 
endfig;
let end=mprunend;
defaultfont:="pplr8t";
defaultscale:=11.0pt/10pt;

cmykcolors:=true;
spotcolors:=true;

OverlayWidth:=455.24408pt  ;
OverlayHeight:=602.54991pt  ;
OverlayDepth:=602.54991pt  ;
OverlayColor:=(0,0,0);
OverlayLineWidth:=0pt ;
OverlayLineColor:=(0,0,0);
BaseLineSkip:=-1000.0pt;
LineHeight:=-1000.0pt;
BodyFontSize:=11.0pt;
TopSkip:=11.0pt;
StrutHeight:=10.40042pt;
StrutDepth:=4.04459pt;
CurrentWidth:=455.24408pt;
CurrentHeight:=602.54991pt;
EmWidth:=11.0pt;
ExHeight:=5.15894pt;
PageNumber:=15;
RealPageNumber:=17;
LastPageNumber:= 17;

prologues:=1;
mpprocset:=1;

HSize:=455.24408pt;
VSize:=602.54991pt;

mp_shade_version := 2 ;

OnRightPage:=true;
InPageBody:=false ;

def LoadPageState =
OnRightPage:=true;
OnOddPage:=true;
RealPageNumber:=17;
PageNumber:=15;
NOfPages:=17;
PaperHeight:=794.96999pt;
PaperWidth:=614.295pt;
PrintPaperHeight:=794.96999pt;
PrintPaperWidth:=614.295pt;
TopSpace:=42.67912pt;
BottomSpace:=42.67912pt;
BackSpace:=71.13188pt;
CutSpace:=87.91904pt;
MakeupHeight:=709.61174pt;
MakeupWidth:=455.24408pt;
TopHeight:=0.0pt;
TopDistance:=0.0pt;
HeaderHeight:=53.53091pt;
HeaderDistance:=0.0pt;
TextHeight:=602.54991pt;
FooterDistance:=0.0pt;
FooterHeight:=53.53091pt;
BottomDistance:=0.0pt;
BottomHeight:=0.0pt;
LeftEdgeWidth:=0.0pt;
LeftEdgeDistance:=0.0pt;
LeftMarginWidth:=71.13188pt;
LeftMarginDistance:=7.11317pt;
TextWidth:=455.24408pt;
RightMarginDistance:=7.11317pt;
RightMarginWidth:=71.13188pt;
RightEdgeDistance:=0.0pt;
RightEdgeWidth:=0.0pt;
InnerMarginDistance:=7.11317pt;
InnerMarginWidth:=71.13188pt;
OuterMarginDistance:=7.11317pt;
OuterMarginWidth:=71.13188pt;
InnerEdgeDistance:=0.0pt;
InnerEdgeWidth:=0.0pt;
OuterEdgeDistance:=0.0pt;
OuterEdgeWidth:=0.0pt;
PageOffset:=0.0pt;
PageDepth:=0.0pt;
LayoutColumns:=1;
LayoutColumnDistance:=0.0pt;
LayoutColumnWidth:=455.24408pt;
enddef;

ResetTextAreas;
;
SaveTextAreas;
ResetTextAreas;
;
;
PlainTextArea:=boundingbox((0pt,0pt)--(0pt,0pt)
shifted (0pt,0pt));

local_multi_par_area:=true;
;
let mprunend = end ;
beginfig(3996);
if unknown context_char : input mp-char.mp ; fi ; grid_width := 99.0pt; grid_height := 55.0pt; shape_width := 66.0pt; shape_height := 33.0pt; connection_line_width := 3.0pt; connection_smooth_size := 7.5pt; connection_arrow_size := 7.5pt; connection_dash_size := 7.5pt; begin_chart(0,1,2); reverse_y := true ; chart_offset := 2.75pt; chart_background_color := (scaledgray(.95,1)) ; begin_sub_chart ; shape_line_color := (scaledgray(.7,1)) ; shape_fill_color := (scaledgray(.9,1)) ; shape_line_width := 1.64993pt; peepshape := false ; new_shape(1,1,shape_procedure) ; end_sub_chart ; begin_sub_chart ; shape_line_color := (scaledgray(.7,1)) ; shape_fill_color := (scaledgray(.9,1)) ; shape_line_width := 1.64993pt; peepshape := false ; new_shape(1,2,shape_procedure) ; end_sub_chart ; smooth := true ; dashline := false ; arrowtip := true ; touchshape := true ; dsp_x := 0 ; dsp_y := 0 ;connection_line_color := (scaledrgb(0,.6,0,1)) ; connection_line_width := 3.0pt; connect_top_bottom(1,2,0) (1,1,0) ; dsp_x := 0 ; dsp_y := 0 ;clip_chart(1,1,1,2) ; end_chart ; 
endfig;
let end=mprunend;
defaultfont:="pplr8t";
defaultscale:=11.0pt/10pt;

cmykcolors:=true;
spotcolors:=true;

OverlayWidth:=455.24408pt  ;
OverlayHeight:=602.54991pt  ;
OverlayDepth:=602.54991pt  ;
OverlayColor:=(0,0,0);
OverlayLineWidth:=0pt ;
OverlayLineColor:=(0,0,0);
BaseLineSkip:=14.44502pt;
LineHeight:=14.44502pt;
BodyFontSize:=11.0pt;
TopSkip:=11.0pt;
StrutHeight:=10.40042pt;
StrutDepth:=4.04459pt;
CurrentWidth:=455.24408pt;
CurrentHeight:=602.54991pt;
EmWidth:=11.0pt;
ExHeight:=5.15894pt;
PageNumber:=320;
RealPageNumber:=325;
LastPageNumber:= 325;

prologues:=1;
mpprocset:=1;

HSize:=455.24408pt;
VSize:=602.54991pt;

mp_shade_version := 2 ;

OnRightPage:=true;
InPageBody:=false ;

def LoadPageState =
OnRightPage:=true;
OnOddPage:=true;
RealPageNumber:=325;
PageNumber:=320;
NOfPages:=325;
PaperHeight:=794.96999pt;
PaperWidth:=614.295pt;
PrintPaperHeight:=794.96999pt;
PrintPaperWidth:=614.295pt;
TopSpace:=42.67912pt;
BottomSpace:=42.67912pt;
BackSpace:=71.13188pt;
CutSpace:=87.91904pt;
MakeupHeight:=709.61174pt;
MakeupWidth:=455.24408pt;
TopHeight:=0.0pt;
TopDistance:=0.0pt;
HeaderHeight:=53.53091pt;
HeaderDistance:=0.0pt;
TextHeight:=602.54991pt;
FooterDistance:=0.0pt;
FooterHeight:=53.53091pt;
BottomDistance:=0.0pt;
BottomHeight:=0.0pt;
LeftEdgeWidth:=0.0pt;
LeftEdgeDistance:=0.0pt;
LeftMarginWidth:=71.13188pt;
LeftMarginDistance:=7.11317pt;
TextWidth:=455.24408pt;
RightMarginDistance:=7.11317pt;
RightMarginWidth:=71.13188pt;
RightEdgeDistance:=0.0pt;
RightEdgeWidth:=0.0pt;
InnerMarginDistance:=7.11317pt;
InnerMarginWidth:=71.13188pt;
OuterMarginDistance:=7.11317pt;
OuterMarginWidth:=71.13188pt;
InnerEdgeDistance:=0.0pt;
InnerEdgeWidth:=0.0pt;
OuterEdgeDistance:=0.0pt;
OuterEdgeWidth:=0.0pt;
PageOffset:=0.0pt;
PageDepth:=0.0pt;
LayoutColumns:=1;
LayoutColumnDistance:=0.0pt;
LayoutColumnWidth:=455.24408pt;
enddef;

ResetTextAreas;
RegisterTextArea(0pt,0pt,0pt,0pt,0pt);;
SaveTextAreas;
ResetTextAreas;
;
;
PlainTextArea:=boundingbox((0pt,0pt)--(0pt,0pt)
shifted (0pt,0pt));

local_multi_par_area:=false;
;
let mprunend = end ;
beginfig(3995);
u := 10*0.0275pt; bboxmargin := 0pt ; pickup pencircle scaled 2u ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; x0 := 0 u ; y0 := 0 u ; x1 := 86.6u ; y1 := 50.0u ; x2 := 86.6u ; y2 := -50.0u ; x3 := 0 u ; y3 := -100.0u ; draw ((z1--z2) rotatedaround(origin,-0)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; x0 := 0 u ; y0 := 0 u ; x1 := 86.6u ; y1 := 50.0u ; x2 := 86.6u ; y2 := -50.0u ; x3 := 0 u ; y3 := -100.0u ; draw ((z1--z2) rotatedaround(origin,-60)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; x0 := 0 u ; y0 := 0 u ; x1 := 86.6u ; y1 := 50.0u ; x2 := 86.6u ; y2 := -50.0u ; x3 := 0 u ; y3 := -100.0u ; draw ((z1--z2) rotatedaround(origin,-120)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; x0 := 0 u ; y0 := 0 u ; x1 := 86.6u ; y1 := 50.0u ; x2 := 86.6u ; y2 := -50.0u ; x3 := 0 u ; y3 := -100.0u ; draw ((z1--z2) rotatedaround(origin,-180)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; x0 := 0 u ; y0 := 0 u ; x1 := 86.6u ; y1 := 50.0u ; x2 := 86.6u ; y2 := -50.0u ; x3 := 0 u ; y3 := -100.0u ; draw ((z1--z2) rotatedaround(origin,-240)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; x0 := 0 u ; y0 := 0 u ; x1 := 86.6u ; y1 := 50.0u ; x2 := 86.6u ; y2 := -50.0u ; x3 := 0 u ; y3 := -100.0u ; draw ((z1--z2) rotatedaround(origin,-300)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; r := 70.0*2u; x0 := 0 u ; y0 := 0 u ; draw ((subpath (-30/45,30/45) of (fullcircle scaled (r))) rotatedaround (origin,0+150)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; r := 70.0*2u; x0 := 0 u ; y0 := 0 u ; draw ((subpath (-30/45,30/45) of (fullcircle scaled (r))) rotatedaround (origin,60+150)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; r := 70.0*2u; x0 := 0 u ; y0 := 0 u ; draw ((subpath (-30/45,30/45) of (fullcircle scaled (r))) rotatedaround (origin,120+150)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; r := 70.0*2u; x0 := 0 u ; y0 := 0 u ; draw ((subpath (-30/45,30/45) of (fullcircle scaled (r))) rotatedaround (origin,180+150)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; r := 70.0*2u; x0 := 0 u ; y0 := 0 u ; draw ((subpath (-30/45,30/45) of (fullcircle scaled (r))) rotatedaround (origin,240+150)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; r := 70.0*2u; x0 := 0 u ; y0 := 0 u ; draw ((subpath (-30/45,30/45) of (fullcircle scaled (r))) rotatedaround (origin,300+150)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; x0 := 155.4u ; y0 := 0 u ; x1 := 68.8u ; y1 := 24.0u ; x2 := 68.8u ; y2 := -24.0u ; x3 := 0 u ; y3 := -48.0u ; draw ((z1--z2) rotatedaround(origin,-324)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; x0 := 155.4u ; y0 := 0 u ; x1 := 68.8u ; y1 := 24.0u ; x2 := 68.8u ; y2 := -24.0u ; x3 := 0 u ; y3 := -48.0u ; draw ((z1--z2) rotatedaround(origin,-36)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; x0 := 155.4u ; y0 := 0 u ; x1 := 68.8u ; y1 := 50.0u ; x2 := 68.8u ; y2 := -24.0u ; x3 := 0 u ; y3 := -74.0u ; draw ((z1--z2) rotatedaround(origin,-252)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; x0 := 155.4u ; y0 := 0 u ; x1 := 68.8u ; y1 := 24.0u ; x2 := 68.8u ; y2 := -50.0u ; x3 := 0 u ; y3 := -74.0u ; draw ((z1--z2) rotatedaround(origin,-108)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; x0 := 155.4u ; y0 := 0 u ; x1 := 86.9u ; y1 := 69.3u ; x2 := 106.4u ; y2 := 83.4u ; x3 := 19.5u ; y3 := 14.1u ; draw ((z1--z2) rotatedaround(origin,-324)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; x0 := 155.4u ; y0 := 0 u ; x1 := 92.7u ; y1 := 61.3u ; x2 := 112.2u ; y2 := 75.4u ; x3 := 19.5u ; y3 := 14.1u ; draw ((z1--z2) rotatedaround(origin,-324)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; x0 := 155.4u ; y0 := 0 u ; x1 := 86.9u ; y1 := 69.3u ; x2 := 106.4u ; y2 := 83.4u ; x3 := 19.5u ; y3 := 14.1u ; draw ((z1--z2) rotatedaround(origin,-108)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; x0 := 155.4u ; y0 := 0 u ; x1 := 92.7u ; y1 := 61.3u ; x2 := 112.2u ; y2 := 75.4u ; x3 := 19.5u ; y3 := 14.1u ; draw ((z1--z2) rotatedaround(origin,-108)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; x0 := 155.4u ; y0 := 0 u ; x1 := 89.8u ; y1 := 65.3u ; x2 := 109.3u ; y2 := 79.4u ; x3 := 19.5u ; y3 := 14.1u ; draw ((z1--z2) rotatedaround(origin,-36)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; x0 := 350.5u ; y0 := 0 u ; x1 := 30.0u ; y1 := 0 u ; x2 := 70.0u ; y2 := 0 u ; x3 := 40.0u ; y3 := 0 u ; draw ((z1--z2) rotatedaround(origin,-45)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; x0 := 350.5u ; y0 := 0 u ; x1 := 30.0u ; y1 := 0 u ; x2 := 70.0u ; y2 := 0 u ; x3 := 40.0u ; y3 := 0 u ; draw ((z1--z2) rotatedaround(origin,-180)) shifted z0 ; drawoptions (withpen pencircle scaled 0.4pt withcolor black) ; x0 := 350.5u ; y0 := 0 u ; x1 := 30.0u ; y1 := 0 u ; x2 := 70.0u ; y2 := 0 u ; x3 := 40.0u ; y3 := 0 u ; draw ((z1--z2) rotatedaround(origin,-315)) shifted z0 ; 
endfig;
let end=mprunend;
end.
