------------------------------------------------------------------
TeX support for the `Euro' fonts in Adobe Type 1 format from Adobe
------------------------------------------------------------------

Adobe has provided 3 font families (sans, mono, and serif),
each with the usual four styles (regular, italic, bold, bold italic).
Each font contains a single glyph.  The font is arranged so
that (just about) any character code will access this glyph.

There are twelve TFM files corresponding to the twelve fonts with
their canonical Karl Berry names in the directory tfm.  Create a 
directory texmf/fonts/tfm/adobe/eurofont and copy the files there.

The file dvips/zpeu.map tells DVIPS what the PS font names are and what
PFB file to expand into PFA format for inclusion in the PS output.
Append the contents of this file to the files texmf/dvips/config/psfonts.map
and texmf/dvips/config/pdftex.map.

* Please, note that some TeX systems (e.g., TeXLive4) already come with
* the tfm files and a map file for the Adobe Euro fonts, so that you will
* NOT need to install these files manually.

The file plaintex/eurosamp.tex (plain TeX) show all twelve fonts in action.
See also eurosamp.dvi and eurosamp.pdf

As for the fonts themselves, you will need to download these from
one of Adobe's sites.  See below.

--------------------------------------------
ADOBE SYSTEMS INCORPORATED ADOBE® EURO FONTS
--------------------------------------------

Adobe WWW Location:

	http://www.adobe.com/type/eurofont.html

Adobe FTP Locations:

	ftp://ftp.adobe.com/pub/adobe/type/win/all/eurofont.exe
	ftp://ftp-pac.adobe.com/pub/adobe/type/win/all/eurofont.exe

IMPORTANT NOTE: the above file is a self-extracting ZIP file.

PostScript Name         Menu Name Plus Style Links      Filename

EuroSans-Regular        Euro Sans                       _1______.PFB
EuroSans-Bold           Euro Sans,BOLD                  _1B_____.PFB
EuroSans-Italic         Euro Sans,ITALIC                _1I_____.PFB
EuroSans-BoldItalic     Euro Sans,BOLDITALIC            _1BI____.PFB

EuroMono-Regular        Euro Monospace                  _2______.PFB
EuroMono-Bold           Euro Monospace,BOLD             _2B_____.PFB
EuroMono-Italic         Euro Monospace,ITALIC           _2I_____.PFB
EuroMono-BoldItalic     Euro Monospace,BOLDITALIC       _2BI____.PFB

EuroSerif-Regular       Euro Serif                      _3______.PFB
EuroSerif-Bold          Euro Serif,BOLD                 _3B_____.PFB
EuroSerif-Italic        Euro Serif,ITALIC               _3I_____.PFB
EuroSerif-BoldItalic    Euro Serif,BOLDITALIC           _3BI____.PFB

Unzip the file eurofont.exe, create a directory
texmf/fonts/type1/adobe/eurofont and copy the .PFB files to this directory
while renaming the files as follows:

_1______.PFB  ->  zpeurs.pfb
_1B_____.PFB  ->  zpeubs.pfb
_1I_____.PFB  ->  zpeuris.pfb
_1BI____.PFB  ->  zpeubis.pfb
_2______.PFB  ->  zpeurt.pfb
_2B_____.PFB  ->  zpeubt.pfb
_2I_____.PFB  ->  zpeurit.pfb
_2BI____.PFB  ->  zpeubit.pfb
_3______.PFB  ->  zpeur.pfb
_3B_____.PFB  ->  zpeub.pfb
_3I_____.PFB  ->  zpeuri.pfb
_3BI____.PFB  ->  zpeubi.pfb

[ If you are lazy and don't want to rename the files, you can use the
mapping file zpeu-origname.map instead of zpeu.map, see above. ]

On Unix and Linux systems, you can do all these steps together with
the shell script install.sh.  Change it to your needs before running it.

---------------------------------------------------------------------
Y&Y, Inc. 45 Walden Street Concord MA 01742 USA http://www.YandY.com
---------------------------------------------------------------------
