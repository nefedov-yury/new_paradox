TODO:
2) colors for html-file
3) check colors in xterm and iTerm2
4) ---

===========================================================
paradox.vim    ->    New/Other/
vim-colorsamplerpack/colors/paradox.vim

===========================================================
Vim's colorscheme incubator:
https://github.com/vim/colorschemes/
/usr/share/vim/vim91/colors/

===========================================================
https://webaim.org/resources/contrastchecker/
TPGi Color Contrast Analyser (CCA):
https://www.tpgi.com/color-contrast-checker/

===========================================================
new_paradox rgb (HSL),  base contrast: ~ 7.2
===========================================================
Normal        guifg=#d4d4d4 (0,0,83)    guibg=#074640 (174,82,15)
Visual        guifg=#e6e6e6 (0,0,90)    guibg=#0b7268 (174,82,25)

Search        guifg=bg            guibg=#98c379 (94,38,62)
CurSearch     guifg=bg            guibg=#cde0b6 (87,40,80)  gui=bold

Cursor        guifg=bg            guibg=#14c8c8 (180,82,43)

" match brackets: 9.0
MatchParen    guifg=bg            guibg=#f3f33f (60,88,60)

" nontext & SpecialKey: 6.1
NonText       guifg=#ff9494 ( 0,100,79)  guibg=#053833 (174,82,12)
SpecialKey    guifg=#ff9494              guibg=#053833

SignColumn                               guibg=#053833
FoldColumn    guifg=#8bd09c (134,42,68)  guibg=#053833
Folded        guifg=#6ec483 (134,42,60)  guibg=#042a26 (174,82,9)

StatusLine    guifg=#212c2b (174,14,15)  guibg=#98c379 (94,38,62)
StatusLineNC  guifg=#98c379              guibg=#212c2b
WildMenu      guifg=#98c379              guibg=#212c2b   gui=underline
VertSplit     guifg=#98c379              guibg=#98c378

CursorLine                               guibg=#095d55 (174,82,20)
CursorColumn                             guibg=#095d55
ColorColumn                              guibg=#953232 (0,50,39)

LineNr        guifg=#b2cb62 (74,50,59)   guibg=#053833 (174,82,12)
CursorLineNr  guifg=#cbee58 (74,82,64)   guibg=#084f48 (174,82,17)

Pmenu         guifg=#212c2b (174,14,15)  guibg=#98c379 (94,38,62)
PmenuSel      guifg=#98c379              guibg=#212c2b   gui=underline
PmenuSbar                                guibg=#042a26 (174,82,9)
PmenuThumb                               guibg=#669966 (120,20,50)

" 'guisp' sets the color for the underline curl 'gui=undercurl'
SpellBad      guisp=#ffc7c7 (  0,100,89) guibg=#5d3232 (  0,30,28)
SpellCap      guisp=#ccccff (240,100,90) guibg=#24246b (240,50,28)
SpellLocal    guisp=#00ebeb (180,100,46) guibg=bg
SpellRare     guisp=#ffbdff (300,100,87) guibg=#562e56 (300,30,26)

" warnings: 4.7, error: 7.1
WarningMsg    guifg=#ff8888 ( 0,100,76)  guibg=bg
ErrorMsg      guifg=#ffff77 (60,100,73)  guibg=#953232 (0,50,39)

" directory: 5.9
Question      guifg=#95eb14 (84,84,50)   guibg=bg
Title         guifg=#95eb14              guibg=bg
MoreMsg       guifg=#95eb14              guibg=bg
ModeMsg       guifg=#95eb14              guibg=bg
Directory     guifg=#6acbfb (200,95,70)  guibg=bg  gui=bold

DiffChange    guifg=#053833 (174,82,12)  guibg=#9ac7f4 (210, 80,78)
DiffText      guifg=#000000 (black)      guibg=#3399ff (210,100,60)
DiffAdd       guifg=bg                   guibg=#7de87d (120, 70,70)
DiffDelete    guifg=bg                   guibg=#dbdb57 ( 60, 65,60)

" Syntax Highlight

" comment: 7.0, special comment: 7.9
Comment         guifg=#f5cb89 ( 37, 84,75)  guibg=bg
SpecialComment  guifg=#fdd3d3 (  0, 91,91)  guibg=bg  gui=italic

" constant: 7.9
Constant        guifg=#1ff9d5 (170, 95,55)  guibg=bg

" string: 7.0, character: 8.5
String          guifg=#9cded3 (170, 50,74)  guibg=bg
Character       guifg=#e3ed7f ( 65, 75,71)  guibg=bg
SpecialChar     guifg=#e3ed7f               guibg=bg

" identifier: 8.0
Identifier      guifg=#eaddc3 ( 40, 48,84)  guibg=bg

" statement: 10.7
Statement       guifg=#ffffff (white)       guibg=bg

" preproc: 8.0
PreProc         guifg=#bbed97 ( 95, 70,76)  guibg=bg

" type: 7.2
Type            guifg=#99ddff (200,100,80)  guibg=bg

" special: 7.9
Special         guifg=#fdd3d3 (  0, 91,91)  guibg=bg

" TODO: 5.5
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
