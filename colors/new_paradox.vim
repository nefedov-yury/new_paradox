" Name:         new_paradox
" Version:      1.0
" Description:  This is a modification of the paradox color scheme.
" More contrasting colors are chosen. It is desirable that the text
" have a a contras ratio of at least 7:1 for regular font and
" 4.5:1 for bold fonts.
" Tested with vim-airline theme 'deus'.

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "new_paradox"

" base contrast fg:bg ~7.2
highlight Normal        guifg=#d4d4d4   guibg=#074640   gui=NONE

" Visual mode
highlight Visual        guifg=#e6e6e6   guibg=#0b7268   gui=NONE
" VisualNOS - x11 only: select in vim and after select in xterm
highlight VisualNOS     guifg=#e6e6e6   guibg=#9f30bf   gui=NONE

highlight Search        guifg=bg        guibg=#98c379   gui=NONE
highlight CurSearch     guifg=bg        guibg=#cde0b6   gui=bold

" Search, IncSearch (:set incsearch)
highlight IncSearch                                     gui=reverse

" Cursor, lCursor, CursorIM
" hi Cursor       guifg=bg        guibg=#beffbe   gui=NONE
highlight Cursor        guifg=bg        guibg=#14c8c8   gui=NONE
" cursor when language-mapping is used
highlight lCursor       guifg=bg        guibg=#a1c11a   gui=NONE
" cursor when IME mode is enabled
if has('multi_byte_ime')
  highlight CursorIM    guifg=bg        guibg=#a1c11a   gui=NONE
endif

" paired brackets
highlight MatchParen    guifg=bg        guibg=#f3f33f   gui=NONE

" characters that do not really exist in the text (:set list)
highlight NonText       guifg=#ff9494   guibg=#053833   gui=NONE
" text that is displayed differently from what it really is
highlight SpecialKey    guifg=#ff9494   guibg=#053833   gui=NONE

" folding ans column where signs
highlight Folded        guifg=#6ec483   guibg=#042a26   gui=NONE
highlight FoldColumn    guifg=#8bd09c   guibg=#053833   gui=NONE
highlight SignColumn                    guibg=#053833   gui=NONE

" statusline: colors are borrowed from the Airline deus theme
highlight StatusLine    guifg=#212c2b   guibg=#98c379   gui=NONE
highlight StatusLineNC  guifg=#98c379   guibg=#212c2b   gui=NONE
highlight WildMenu      guifg=#98c379   guibg=#212c2b   gui=underline

" column separating vertically split windows
highlight VertSplit     guifg=#98c378   guibg=#98c378   gui=NONE

" tab-page titles
highlight TabLineFill   guifg=#212c2b
highlight TabLineSel    guifg=#212c2b   guibg=#98c379   gui=bold
highlight TabLine       guifg=#98c379   guibg=#212c2b   gui=NONE

" CursorLine (:set cursorline), CursorColumn (:set cursorcolumn)
highlight CursorLine                    guibg=#095d55   gui=NONE
highlight CursorColumn                  guibg=#095d55   gui=NONE
" (:set cc=+1)
highlight ColorColumn                   guibg=#953232   gui=NONE

" line numbers (:set number)
highlight LineNr        guifg=#b2cb62   guibg=#053833   gui=NONE
highlight CursorLineNr  guifg=#cbee58   guibg=#084f48   gui=NONE

" popup completion menu
highlight Pmenu         guifg=#212c2b   guibg=#98c379   gui=NONE
highlight PmenuSel      guifg=#98c379   guibg=#212c2b   gui=underline
" please note that this scroll bar is not intended for mouse use
highlight PmenuSbar                     guibg=#042a26   gui=NONE
highlight PmenuThumb                    guibg=#669966   gui=NONE

" (:echohl WarningMsg | echo "Colored warnging message")
highlight WarningMsg    guifg=#ff8888   guibg=bg        gui=NONE
highlight ErrorMsg      guifg=#ffff77   guibg=#953232   gui=NONE
" hit-enter prompt (!ls)
highlight Question      guifg=#95eb14   guibg=bg        gui=NONE
" (:set all)
highlight Title         guifg=#95eb14   guibg=bg        gui=NONE
highlight MoreMsg       guifg=#95eb14   guibg=bg        gui=NONE
" (:set showmode)
highlight ModeMsg       guifg=#95eb14   guibg=bg        gui=NONE
" (:Texplore)
highlight Directory     guifg=#6acbfb   guibg=bg        gui=bold

" Spell Checking 'guisp' sets the color for the underline curl
" --------------
highlight SpellBad      guisp=#ffc7c7   guibg=#5d3232   gui=undercurl
highlight SpellCap      guisp=#ccccff   guibg=#24246b   gui=undercurl
" it seems there are no rare words in the vim-dictionary
highlight SpellRare     guisp=#ffbdff   guibg=#562e56   gui=undercurl
" (:set spell spelllang=en_us) centre center, color colour
highlight SpellLocal    guisp=#00ebeb   guibg=bg        gui=undercurl

" Diff Mode
" ---------
highlight DiffChange    guifg=#053833   guibg=#9ac7f4   gui=NONE
highlight DiffText      guifg=#000000   guibg=#3399ff   gui=NONE
highlight DiffAdd       guifg=bg        guibg=#7de87d   gui=NONE
highlight DiffDelete    guifg=bg        guibg=#dbdb57   gui=NONE

" Syntax Highlight
" ----------------
highlight Comment       guifg=#f5cb89   guibg=bg        gui=NONE
hi SpecialComment       guifg=#fdd3d3   guibg=bg        gui=italic

highlight Constant      guifg=#1ff9d5   guibg=bg        gui=NONE
hi link   Float         Constant
hi link   Number        Constant
hi link   Boolean       Constant

highlight String        guifg=#9cded3   guibg=bg        gui=NONE
highlight Character     guifg=#e3ed7f   guibg=bg        gui=NONE
highlight SpecialChar   guifg=#e3ed7f   guibg=bg        gui=NONE
hi link   Delimiter     SpecialChar

" it works in python but not in c,c++
highlight Identifier    guifg=#eaddc3   guibg=bg        gui=NONE
hi link   Function      Identifier

highlight Statement     guifg=#ffffff   guibg=bg        gui=NONE
hi link   Conditional   Statement
hi link   Repeat        Statement
hi link   Label         Statement
hi link   Operator      Statement
hi link   Keyword       Statement
hi link   Exception     Statement

highlight PreProc       guifg=#bbed97   guibg=bg        gui=NONE
hi link   Include       PreProc
hi link   Define        PreProc
hi link   Macro         PreProc
hi link   PreCondit     PreProc

highlight Type          guifg=#99ddff   guibg=bg        gui=NONE
hi link   StorageClass  Type
hi link   Structure     Type
hi link   Typedef       Type

" for example in html-file
highlight Special       guifg=#fdd3d3   guibg=bg        gui=NONE
hi link   Tag           Special

" Note: TODO, FIXME ... XXX
highlight Todo          guifg=bg        guibg=#a1c587   gui=bold

" GitGutter plugin: as in diff mode but bg and fg are swapped
" ----------------
highlight GitGutterChange  guifg=#9ac7f4  guibg=#053833  gui=bold
highlight GitGutterAdd     guifg=#7de87d  guibg=#053833  gui=bold
highlight GitGutterDelete  guifg=#dbdb57  guibg=#053833  gui=bold
hi! link  GitGutterChangeDeleteLine     GitGutterChange

" Rainbow plugin: https://github.com/luochen1990/rainbow
" --------------
if exists('g:rainbow_active')
  let g:rainbow_conf = get(g:, 'rainbow_conf', {})
  let g:rainbow_conf.guifgs = [
        \'#faafd7','#d7ff00','#ff8700','#afffff','#87ff87' ]
  let g:rainbow_conf.ctermfgs = [218, 190, 208, 159, 120]
endif

" are these useful?
" ----------------
highlight Debug         guifg=#a8a8a8   guibg=bg        gui=NONE
highlight Underlined    guifg=NONE                      gui=underline
highlight Error         guifg=#ffffff   guibg=#953232   gui=underline
" highlight Ignore        guifg=#306868   guibg=bg        gui=NONE

" white terminal
highlight Terminal      guifg=black   guibg=white   gui=NONE

