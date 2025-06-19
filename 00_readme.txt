vim: et ts=8 tw=80
-------------------

===========================================================
vim-colorsamplerpack/colors/paradox.vim

===========================================================
Vim's colorscheme incubator:
https://github.com/vim/colorschemes/
/usr/share/vim/vim91/colors/

:ru colors/tools/check_colors.vim

===========================================================
* Contrast ratio acoding to WCAG 2.x:
  TPGi Color Contrast Analyser (CCA)
  https://www.tpgi.com/color-contrast-checker/
  -> further this ratio is denoted as :R, which means R:1

* The Accessible Perceptual Contrast Algorithm:
  https://www.smashingmagazine.com/2022/09/realities-myths-contrast-color/
  -> further this contrast is denoted as Lc=V

===========================================================
color_group  rgb (HSL) 'contrast'
===========================================================
Normal  guifg=#e6e6e6 (0,0,90) guibg=#054640 (174,87,15) :8.6 Lc=-82

Visual    guifg=#f8f8f8 (0,0,97) guibg=#0d7268 (174,80,25)  :5.2 Lc=-75
VisualNOS guifg=#f8f8f8          guibg=#ac39ac (300°,50,45) :5.0 Lc=-76

Search     guifg=bg   guibg=#9ed279 (95,50,65)           :6.1 Lc=60
CurSearch  guifg=bg   guibg=#d0e6b3 (86,50,80) gui=bold  :8.0 Lc=75

Cursor     guifg=bg   guibg=#12f2f2 (180,90,51)  bg: 7.7 Lc=-75
lCursor    guifg=bg   guibg=#ccf20d (70°,90,50)  bg: 8.3 Lc=-80

CursorLine            guibg=#065d55 (174°,88,19) txt:6.2 Lc=-75
CursorColumn          guibg=#065d55

LineNr       guifg=#b2cb62 (74,50,59) guibg=#063833 (174,81,12) :7.2 Lc=-63
CursorLineNr guifg=#c5d888 (74,51,69) guibg=#065d55             :5.1 Lc=-62

ColorColumn  guibg=#913030 (0°,50,38)           txt: 6.3 Lc=-75

MatchParen   guifg=bg  guibg=#f3f33f (60,88,60)  bg: 9.0 Lc=83

NonText     guifg=#cc6666 (0°,50,60)  guibg=#063833 (174,81,12) :3.5 Lc=-32
SpecialKey  guifg=#ffa2a2 (0°,100,82) guibg=#063833             :6.7 Lc=-60

SignColumn                             guibg=#063833
FoldColumn  guifg=#8bd09c (135,42,68)  guibg=#063833            :7.2 Lc=-63
Folded      guifg=#66cc7f (135,50,60)  guibg=#042a26 (174,82,9) :7.7 Lc=-61

------------------------------------------------------------------------------
" colors of status line, tabs and menus are close to the Airline deus theme
------------------------------------------------------------------------------
StatusLine   guifg=#badf9f (95°,50,75) guibg=#212c2b (175,14,15)   :9.7,-77
StatusLineNC guifg=#78b04f (95°,38,50) guibg=#212c2b               :5.6,-48
WildMenu     guifg=#b8ef90 (95°,75,75) guibg=#212c2b gui=underline :11,-84

VertSplit    guifg=#98c379 (95°,38,62) guibg=#98c378
TabLineFill  guifg=#212c2b
TabLineSel   guifg=#212c2b             guibg=#98c379 gui=bold   :7.1, 60
TabLine      guifg=#98c379             guibg=#212c2b            :7.1,-60

Pmenu        guifg=#212c2b (174,14,15) guibg=#98c379 (94,38,62)    :7.1, 60
PmenuSel     guifg=#98c379             guibg=#212c2b gui=underline :7.1,-60
PmenuSbar                              guibg=#042a26 (174,82,9)
PmenuThumb                             guibg=#669966 (120,20,50)
------------------------------------------------------------------------------

WarningMsg guifg=#ff8888 (0°,100,77) guibg=#042a26 (174,82,9) :6.7,Lc=-54
ErrorMsg   guifg=#ffff00 (60,100,50) guibg=#913030 (0,50,38)  :7.3,Lc=-86

Question      guifg=#95eb15 (84,84,50)   guibg=bg :7.2,Lc=-72
Title         guifg=#95eb15              guibg=bg
MoreMsg       guifg=#95eb15              guibg=bg
ModeMsg       guifg=#95eb15              guibg=bg
Directory     guifg=#6bcbfb (200,95,70)  guibg=bg  gui=bold :5.9,-60

------------------------------------------------------------------------------
" 'guisp' sets the color for the underline curl 'gui=undercurl'
SpellBad   guisp=#ffc7c7 (  0,100,89) guibg=#5d3232 (  0,30,28) txt:8.6 Lc=-82
SpellCap   guisp=#ccccff (240,100,90) guibg=#24246b (240,50,28) txt:11  Lc=-87
SpellLocal guisp=#00ebeb (180,100,46) guibg=bg
SpellRare  guisp=#ffbdff (300,100,87) guibg=#562e56 (300,30,26) txt:8.8 Lc=-83

------------------------------------------------------------------------------
DiffChange  guifg=#000000  guibg=#a3ccf5 (210, 90,80) :13,  Lc=74
DiffText    guifg=#000000  guibg=#65b3ff (210,100,70) :9.4, Lc=60
DiffAdd     guifg=bg       guibg=#a9f0a9 (120, 70,70) :8.0, Lc=76
DiffDelete  guifg=bg       guibg=#ebe1af ( 50, 60,80) :8.1, Lc=76

------------------------------------------------------------------------------
" Syntax Highlight
------------------------------------------------------------------------------
Comment        guifg=#ffca80 (35,100,75) guibg=bg            :7.2 Lc=-71
SpecialComment guifg=#ffca80             guibg=bg gui=italic

Constant       guifg=#09f5c5 (168,93,50) guibg=bg            :7.6 Lc=-75

String         guifg=#9fdfdf (180,50,75) guibg=bg            :7.2 Lc=-71
Character      guifg=#e3ed7f (65,75,71)  guibg=bg            :8.5 Lc=-82
SpecialChar    guifg=#e3ed7f             guibg=bg

Identifier     guifg=#fff2b2 (50,100,85) guibg=bg            :9.5 Lc=-89

Statement      guifg=#ffffff (white)     guibg=bg            :11  Lc=-99

PreProc        guifg=#bff28c (90,80,75)  guibg=bg            :8.3 Lc=-80

Type           guifg=#99ddff (200,100,80) guibg=bg           :7.2 Lc=-71

Special        guifg=#88e8a8 (140°,68,72) guibg=bg           :7.2 Lc=-71

Error          guifg=#ffffff  guibg=#913030  gui=bold        :7.9 Lc=-91

Todo           guifg=bg  guibg=#a1c587 (95,35,65)  gui=bold  :5.5 Lc=+55


===========================================================
Test rainbow colors
===========================================================
a0 + (a1*[a2*{a3 + (a4*(a5*(a6+a7)))}])
a0 + [a1*{a2*(a3 + [a4*[a5*[a6+a7]]])}]
a0 + {a1*(a2*[a3 + {a4*{a5*{a6+a7}}}])}
[a0,a1,{a2,a3},a4,a5]

cyan            yellow          orange          green           pink
#afffff         #d7ff00         #ff8700         #87ff87         #ffafd7
(180,100,84)    (69,100,50)     (32,100,50)     (120,100,76)    (330,100,84)
:9.5 Lc=-89     :9.3 Lc=-88     :4.5 Lc=-46     :8.5 Lc=-82     :6.3 Lc=-63

Actual contrast may be lower due to the thinness of the bracket
symbols and the way text is rendered. Below is a table with contrast
values estimated by the brightest pixel in the vertical part of
the square bracket.

* X11 96dpi: -20..25%
:4.6,Lc=-47     :7.2,Lc=-71;    :3.4,Lc=-34     :7.2,Lc=-71     :6.7 Lc=-67
macOS Retina: -25..30%
:4.6,Lc=-47     :6.7,Lc=-66;    :3.4,Lc=-34     :6.8,Lc=-68     :6.1 Lc=-62

------------------------------------------------------------------------------
" Are these useful?
Debug           guifg=#fdd0d0 (0°,92,90)  guibg=NONE             :7.7 Lc=-75
debugPC         guifg=#fdd0d0             guibg=NONE gui=reverse :7.7 Lc=+73
debugBreakpoint guifg=#fdd000 (49,100,50) guibg=NONE gui=reverse :7.3 Lc=+70

hi Conceal      guifg=#888888 (0°,0,53)   guibg=NONE             :3.0 Lc=-29

------------------------------------------------------------------------------

===========================================================
Test for pop-up menu
===========================================================
Xterm_A Xterm_a
Xterm_B Xterm_b
Xterm_C Xterm_c
Xterm_D Xterm_d
Xterm_E Xterm_e
Xterm_F Xterm_f
Xterm_G Xterm_g
Xterm_H Xterm_h
Xterm_I Xterm_i
Xterm_J Xterm_j
Xterm_K Xterm_k
Xterm_L Xterm_l

Xt

===========================================================
This is test for spell checker.
===========================================================
Ths is Test foo spel sheker. try it.
local: centre center, color colour
карова, еж, шел, шёл, ёль, ель
rare: vim

===========================================================
How to insert real tab: <Ctrl-V><Tab>

===========================================================
cterm colors:
main problem - there is no dark green background.
Lightness = 19 is minimal.

===========================================================
