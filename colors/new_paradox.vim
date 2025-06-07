" Name:         new_paradox
" Description:  This is a modification of the paradox color scheme.
" I tried to make sure that the text have a contras ratio of
" at least 7:1 for regular font and 4.5:1 for bold font.
" The contrast for graphic elements (cursor, fold-line etc.) may be
" low and preference is given to good visibility of the text on them.
" Tested with vim-airline theme 'deus'.
" Sets the colors for the Rainbow plugin for displaying paired
" brackets

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "new_paradox"

" base contrast fg:bg ~7.2
hi Normal       guifg=#d4d4d4   guibg=#074640   gui=NONE    cterm=NONE

hi Visual       guifg=#e6e6e6   guibg=#0b7268   gui=NONE    cterm=NONE
" VisualNOS - x11 only: select in vim and after select in xterm
hi VisualNOS    guifg=#e6e6e6   guibg=#9f30bf   gui=NONE    cterm=NONE

hi Search       guifg=bg        guibg=#98c379   gui=NONE    cterm=NONE
hi CurSearch    guifg=bg        guibg=#cde0b6   gui=bold    cterm=NONE
" (:set incsearch)
hi IncSearch    guifg=NONE      guibg=NONE      gui=reverse cterm=NONE

hi Cursor       guifg=bg        guibg=#14c8c8   gui=NONE    cterm=NONE
" cursor when language-mapping is used
hi lCursor      guifg=bg        guibg=#a1c11a   gui=NONE    cterm=NONE
" cursor when IME mode is enabled
if has('multi_byte_ime')
  hi CursorIM   guifg=bg        guibg=#a1c11a   gui=NONE        cterm=NONE
endif

" paired brackets
hi MatchParen   guifg=bg        guibg=#f3f33f   gui=NONE        cterm=NONE

" characters that do not really exist in the text (:set list)
hi NonText      guifg=#ff9494   guibg=#053833   gui=NONE        cterm=NONE
hi! link  EndOfBuffer   NonText
" text that is displayed differently from what it really is
hi SpecialKey   guifg=#ff9494   guibg=#053833   gui=NONE        cterm=NONE

" folding ans column where signs
hi Folded       guifg=#6ec483   guibg=#042a26   gui=NONE        cterm=NONE
hi FoldColumn   guifg=#8bd09c   guibg=#053833   gui=NONE        cterm=NONE
hi SignColumn                   guibg=#053833   gui=NONE        cterm=NONE

" statusline: colors are borrowed from the Airline deus theme
hi StatusLine   guifg=#212c2b   guibg=#98c379   gui=NONE        cterm=NONE
hi StatusLineNC guifg=#98c379   guibg=#212c2b   gui=NONE        cterm=NONE
hi WildMenu     guifg=#98c379   guibg=#212c2b   gui=underline   cterm=NONE

" column separating vertically split windows
hi VertSplit    guifg=#98c378   guibg=#98c378   gui=NONE        cterm=NONE

" tab-page titles
hi TabLineFill  guifg=#212c2b                   gui=NONE        cterm=NONE
hi TabLineSel   guifg=#212c2b   guibg=#98c379   gui=bold        cterm=NONE
hi TabLine      guifg=#98c379   guibg=#212c2b   gui=NONE        cterm=NONE

" CursorLine (:set cursorline), CursorColumn (:set cursorcolumn)
hi CursorLine                   guibg=#095d55   gui=NONE        cterm=NONE
hi! link  CursorLineFold  CursorLine
hi! link  CursorLineSign  CursorLine
hi CursorColumn                 guibg=#095d55   gui=NONE        cterm=NONE
" (:set cc=+1)
hi ColorColumn                  guibg=#953232   gui=NONE        cterm=NONE

" line numbers (:set number)
hi LineNr       guifg=#b2cb62   guibg=#053833   gui=NONE        cterm=NONE
hi! link  LineNrAbove   LineNr
hi! link  LineNrBelow   LineNr
hi CursorLineNr guifg=#cbee58   guibg=#084f48   gui=NONE        cterm=NONE

" popup completion menu
hi Pmenu        guifg=#212c2b   guibg=#98c379   gui=NONE        cterm=NONE
hi PmenuSel     guifg=#98c379   guibg=#212c2b   gui=underline   cterm=NONE
" please note that this scroll bar is not intended for mouse use
hi PmenuSbar                     guibg=#042a26   gui=NONE       cterm=NONE
hi PmenuThumb                    guibg=#669966   gui=NONE       cterm=NONE

" (:echohl WarningMsg | echo "Colored warnging message")
hi WarningMsg   guifg=#ff8888   guibg=bg        gui=NONE        cterm=NONE
hi ErrorMsg     guifg=#ffff77   guibg=#953232   gui=NONE        cterm=NONE
" hit-enter prompt (!ls)
hi Question     guifg=#95eb14   guibg=bg        gui=NONE        cterm=NONE
" (:set all)
hi Title        guifg=#95eb14   guibg=bg        gui=NONE        cterm=NONE
hi MoreMsg      guifg=#95eb14   guibg=bg        gui=NONE        cterm=NONE
" (:set showmode)
hi ModeMsg      guifg=#95eb14   guibg=bg        gui=NONE        cterm=NONE
" (:Texplore)
hi Directory    guifg=#6acbfb   guibg=bg        gui=bold        cterm=NONE
" (:grep or :vimgrep "something" {files})
hi QuickFixLine guifg=NONE      guibg=NONE      gui=reverse     cterm=NONE

" Spell Checking 'guisp' sets the color for the underline curl
" --------------
hi SpellBad     guisp=#ffc7c7   guibg=#5d3232   gui=undercurl   cterm=NONE
hi SpellCap     guisp=#ccccff   guibg=#24246b   gui=undercurl   cterm=NONE
" it seems there are no rare words in the vim-dictionary
hi SpellRare    guisp=#ffbdff   guibg=#562e56   gui=undercurl   cterm=NONE
" (:set spell spelllang=en_us) centre center, color colour
hi SpellLocal   guisp=#00ebeb   guibg=bg        gui=undercurl   cterm=NONE

" Diff Mode
" ---------
hi DiffChange   guifg=#053833   guibg=#9ac7f4   gui=NONE        cterm=NONE
hi DiffText     guifg=#000000   guibg=#3399ff   gui=NONE        cterm=NONE
hi DiffAdd      guifg=bg        guibg=#7de87d   gui=NONE        cterm=NONE
hi DiffDelete   guifg=bg        guibg=#dbdb57   gui=NONE        cterm=NONE

" Syntax Highlight
" ----------------
hi Comment      guifg=#f5cb89   guibg=bg        gui=NONE        cterm=NONE
hi SpecialComment guifg=#fdd3d3 guibg=bg        gui=italic      cterm=NONE

hi Constant     guifg=#1ff9d5   guibg=bg        gui=NONE        cterm=NONE
hi! link  Float         Constant
hi! link  Number        Constant
hi! link  Boolean       Constant

hi String       guifg=#9cded3   guibg=bg        gui=NONE        cterm=NONE
hi Character    guifg=#e3ed7f   guibg=bg        gui=NONE        cterm=NONE
hi SpecialChar  guifg=#e3ed7f   guibg=bg        gui=NONE        cterm=NONE
hi! link  Delimiter     SpecialChar

" it works in python but not in c,c++
hi Identifier   guifg=#eaddc3   guibg=bg        gui=NONE        cterm=NONE
hi! link  Function  Identifier

hi Statement    guifg=#ffffff   guibg=bg        gui=NONE        cterm=NONE
hi! link  Conditional   Statement
hi! link  Repeat        Statement
hi! link  Label         Statement
hi! link  Operator      Statement
hi! link  Keyword       Statement
hi! link  Exception     Statement

hi PreProc       guifg=#bbed97   guibg=bg        gui=NONE        cterm=NONE
hi! link  Include       PreProc
hi! link  Define        PreProc
hi! link  Macro         PreProc
hi! link  PreCondit     PreProc

hi Type         guifg=#99ddff   guibg=bg        gui=NONE        cterm=NONE
hi! link  StorageClass  Type
hi! link  Structure     Type
hi! link  Typedef       Type

" for example in html-file
hi Special      guifg=#fdd3d3   guibg=bg        gui=NONE        cterm=NONE
hi! link  Tag           Special

hi Debug        guifg=#a8a8a8   guibg=bg        gui=NONE        cterm=NONE
hi Underlined   guifg=NONE                      gui=underline   cterm=NONE
hi Ignore       guifg=NONE      guibg=NONE      gui=NONE        cterm=NONE
hi Error        guifg=#ffffff   guibg=#953232   gui=underline   cterm=NONE

" Note: TODO, FIXME ... XXX
hi Todo         guifg=bg        guibg=#a1c587   gui=bold        cterm=NONE

" GitGutter plugin: as in diff mode but bg and fg are swapped
" ----------------
hi GitGutterChange  guifg=#9ac7f4  guibg=#053833  gui=bold      cterm=NONE
hi GitGutterAdd     guifg=#7de87d  guibg=#053833  gui=bold      cterm=NONE
hi GitGutterDelete  guifg=#dbdb57  guibg=#053833  gui=bold      cterm=NONE
hi! link  GitGutterChangeDeleteLine  GitGutterChange

" Rainbow plugin: https://github.com/luochen1990/rainbow
" --------------
if exists('g:rainbow_active')
  let g:rainbow_conf = get(g:, 'rainbow_conf', {})
  let g:rainbow_conf.guifgs = [
        \'#faafd7','#d7ff00','#ff8700','#afffff','#87ff87' ]
  let g:rainbow_conf.ctermfgs = [218, 190, 208, 159, 120]
endif

" Are these useful?
" ----------------
" minimal contrast :3
hi Conceal      guifg=#888888   guibg=bg        gui=NONE        cterm=NONE

" white terminal
hi Terminal     guifg=black     guibg=white     gui=NONE        cterm=NONE
hi! link  StatusLineTerm    StatusLine
hi! link  StatusLineTermNC  StatusLineNC
" the color of the ?signs? with 'gdb'
hi debugPC         guifg=#a8a8a8 guibg=NONE     gui=reverse     cterm=NONE
hi debugBreakpoint guifg=#fdd3d3 guibg=NONE     gui=reverse     cterm=NONE

" GUI (:set guioptions+=T)
" depends on the system and in most cases does not work
hi ToolbarLine   guifg=NONE     guibg=#ffffff   gui=NONE        cterm=NONE
hi ToolbarButton guifg=#ffffff  guibg=#000000   gui=bold        cterm=NONE

" ----------------
"vim: et ts=8 tw=80
