vim: et ts=8 tw=80
-------------------
TODO:
*) colors for html-file

===========================================================
paradox.vim    ->    New/Other/
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
  -> further this ratio is denoted as :R (which means R:1)

* The Accessible Perceptual Contrast Algorithm:
  https://www.smashingmagazine.com/2022/09/realities-myths-contrast-color/
  -> further this contrast is denoted as -V (which means Lc=-V)

===========================================================
color_group  rgb (HSL) 'contrast'
===========================================================
Normal  guifg=#d4d4d4 (0,0,83) guibg=#074640 (174,82,15) :7.2 Lc=-71
Visual  guifg=#e6e6e6 (0,0,90) guibg=#0b7268 (174,82,25) :4.6 Lc=-68

Search     guifg=bg   guibg=#98c379 (94,38,62)           :5.3 Lc=-54
CurSearch  guifg=bg   guibg=#cde0b6 (87,40,80) gui=bold  :7.6 Lc=-74

Cursor     guifg=bg   guibg=#14c8c8 (180,82,43)          :5.2 Lc=-53

" match brackets
MatchParen    guifg=bg  guibg=#f3f33f (60,88,60)         :9.0 Lc=-86

" nontext & SpecialKey
NonText     guifg=#ff9494 ( 0,100,79)  guibg=#053833 (174,82,12) :6.1,-55
SpecialKey  guifg=#ff9494              guibg=#053833

SignColumn                             guibg=#053833
FoldColumn  guifg=#8bd09c (134,42,68)  guibg=#053833            :7.2,-63
Folded      guifg=#6ec483 (134,42,60)  guibg=#042a26 (174,82,9) :7.2,-58

StatusLine   guifg=#212c2b (174,14,15)  guibg=#98c379 (94,38,62) :7.1,60
StatusLineNC guifg=#98c379              guibg=#212c2b            :7.1,-60
WildMenu     guifg=#98c379              guibg=#212c2b gui=underline
VertSplit    guifg=#98c379              guibg=#98c378

CursorLine                     guibg=#095d55 (174,82,20) txt:5.2,-64
CursorColumn                   guibg=#095d55
ColorColumn                    guibg=#953232 (0,50,39)   txt:5.1,-63

LineNr        guifg=#b2cb62 (74,50,59) guibg=#053833 (174,82,12) :7.2,-63
CursorLineNr  guifg=#cbee58 (74,82,64) guibg=#084f48 (174,82,17) :7.2,-76

Pmenu       guifg=#212c2b (174,14,15)  guibg=#98c379 (94,38,62) :7.1,60
PmenuSel    guifg=#98c379           guibg=#212c2b gui=underline :7.1,-60
PmenuSbar                              guibg=#042a26 (174,82,9)
PmenuThumb                             guibg=#669966 (120,20,50)

" 'guisp' sets the color for the underline curl 'gui=undercurl'
SpellBad      guisp=#ffc7c7 (  0,100,89) guibg=#5d3232 (  0,30,28)
SpellCap      guisp=#ccccff (240,100,90) guibg=#24246b (240,50,28)
SpellLocal    guisp=#00ebeb (180,100,46) guibg=bg
SpellRare     guisp=#ffbdff (300,100,87) guibg=#562e56 (300,30,26)

WarningMsg    guifg=#ff8888 ( 0,100,76)  guibg=bg                :4.7,-48
ErrorMsg      guifg=#ffff77 (60,100,73)  guibg=#953232 (0,50,39) :7.1,-86

Question      guifg=#95eb14 (84,84,50)   guibg=bg :7.2,-71
Title         guifg=#95eb14              guibg=bg
MoreMsg       guifg=#95eb14              guibg=bg
ModeMsg       guifg=#95eb14              guibg=bg
Directory     guifg=#6acbfb (200,95,70)  guibg=bg  gui=bold :5.9,-60

DiffChange  guifg=#053833 (174,82,12)  guibg=#9ac7f4 (210, 80,78) :7.3,64
DiffText    guifg=#000000 (black)      guibg=#3399ff (210,100,60) :7.1,49
DiffAdd     guifg=bg                   guibg=#7de87d (120, 70,70) :7.0,68
DiffDelete  guifg=bg                   guibg=#dbdb57 ( 60, 65,60) :7.3,70

" Syntax Highlight

" comment: 7.0, Lc=-70, special comment: 7.9, Lc=-77
Comment         guifg=#f5cb89 ( 37, 84,75)  guibg=bg
SpecialComment  guifg=#fdd3d3 (  0, 91,91)  guibg=bg  gui=italic

" constant: 7.9, Lc=-78
Constant        guifg=#1ff9d5 (170, 95,55)  guibg=bg

" string: 7.0, Lc=-70;  character: 8.5, Lc=-82
String          guifg=#9cded3 (170, 50,74)  guibg=bg
Character       guifg=#e3ed7f ( 65, 75,71)  guibg=bg
SpecialChar     guifg=#e3ed7f               guibg=bg

" identifier: 8.0, Lc=-77
Identifier      guifg=#eaddc3 ( 40, 48,84)  guibg=bg

" statement: 10.7, -99
Statement       guifg=#ffffff (white)       guibg=bg

" preproc: 8.0, -78
PreProc         guifg=#bbed97 ( 95, 70,76)  guibg=bg

" type: 7.2, -71
Type            guifg=#99ddff (200,100,80)  guibg=bg

" special: 7.9, -77
Special         guifg=#fdd3d3 (  0, 91,91)  guibg=bg

" TODO: 5.5, +55
Todo            guifg=bg   guibg=#a1c587 (95,35,65)   gui=bold

===========================================================
test for popup menu
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
TODO: tabs: <Ctrl-V><Tab>
===========================================================
useless:
let g:terminal_ansi_colors = [
      \ '#646464', '#825d4d', '#728c62', '#ada16d',
      \ '#4d7b82', '#8a7267', '#729494', '#aaaaaa',
      \ '#8a8a8a', '#cf937a', '#98d9aa', '#fae79d',
      \ '#7ac3cf', '#d6b2a1', '#ade0e0', '#e0e0e0' ]
===========================================================
Test rainbow colors
===========================================================
a0 + (a1*[a2*{a3 + (a4*(a5*(a6+a7)))}])
a0 + [a1*{a2*(a3 + [a4*[a5*[a6+a7]]])}]
a0 + {a1*(a2*[a3 + {a4*{a5*{a6+a7}}}])}
[a0,a1,{a2,a3},a4,a5]

pink          yellow        orange        cyan          green
#ffafd7 :6.3, #d7ff00 :9.3, #ff8700 :4.5, #afffff :9.5, #87ff87 :8.5
(330,100,84)  (69,100,50)   (32,100,50)   (180,100,84)  (120,100,76)

Actual contrast may be lower due to the thinness of the bracket
symbols and the way text is rendered.
X11 96dpi  :4.7  :7.2  :3.4 :7.2 :6.7

===========================================================
colors in iTerm2:
Noemal bg #004740 fg #d4d4d4 :7.2
Visual bg #007468 fg #e6e6e6 :4.5
Search      bg #8cc570           :5.2
CurSearch   bg #c8e1b2 ->nobold  :7.5
Cursor      bg #00a09e :3.3 (iTerm2 settings)
MatchParen  bg #f3f300 :8.9

NonText     bg #003933 fg #ff8d91 :5.8

FoldColumn  bg #003933 fg #74d298 :7.0
Folded      bg #002b27 fg #4bc77c :7.1

StatusLine  bg #1e2c2b fg #8cc570 ->bold :7.1

CursorLine  bg #005f5f :1.4
ColorColumn bg #a2272d :1.4

LineNr        bg #003933 fg #accc4f :7.1
CursorLineNr  bg #005148 fg #c2ee2f :6.9

Comment       fg #fdc97e :7.0
Constant      fg #00ffd4 :8.2
String        fg #87e0d3 :6.9
Character     fg #e1ed6c :8.4
Identifier    fg #eddcc0 :7.9
Statement     fg #ffffff :10.6
PreProc       fg #adef8c :7.8

rainbow:
pink          yellow        orange        cyan          green
#ffabd9 :6.1, #cdff00 :9.1, #ff7e00 :4.2, #95ffff :9.1, #4cff76 :8.0

===========================================================
colors in Xterm == gvim, except cursor
Noemal bg #074640 fg #d4d4d4 :7.2
Visual bg #0B7268 fg #e6e6e6 :4.6
Search      bg #98c379           :5.3
CurSearch   bg #cde0b6 ->nobold  :7.6
Cursor      bg #359d9d :3.3 (xterm settings)
MatchParen  bg #f3f33f :9.0

===========================================================
Terminal ??
main problem - there is no dark green background, 19 is min
===========================================================
Normal  :7.2
bg #074640 (174,82,15) -> 023: #005f5f, HSL(180°,100,19)
fg #d4d4d4 (0,0,83)    -> 188: #d7d7d7, HSL(0°,0,84)      :5.1
                       -> 195: #d7ffff, HSL(180°,100,92)  :7.0

Visual :4.6
bg=#0b7268 (174,82,25) -> 030: #008787, HSL(180°,100,26)
fg=#e6e6e6 (0,0,90)    -> 231: #ffffff, HSL(0°,0,100)     :4.4

Search :5.3
bg=#98c379 (94,38,62)  -> 150: #afd787, HSL(90°,50,69)    :4.6
CurSearch :7.6
bg=#cde0b6 (87,40,80)  -> 193: #d7ffaf, HSL(90°,100,84)   :6.7

Cursor     bg #359d9d  :2.3 (iTerm2 settings) ?

===========================================================
Advanced Perceptual Contrast Algorithm
===========================================================
Source Code Pro h16
Xx
height X =2.2mm, x = 1.8  1.8/2.2 = 0.8

