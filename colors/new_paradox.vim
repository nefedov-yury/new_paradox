" Name:        new_paradox
" Description: This is a modification of the paradox color scheme from the
" color sampler pack: https://www.vim.org/scripts/script.php?script_id=625
" The purpose of the change was to improve the readability of the text.
" Best used with vim-airline 'deus' theme.

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "new_paradox"

hi Normal       guifg=#e6e6e6   guibg=#054640   gui=NONE    cterm=NONE

hi Visual       guifg=#f8f8f8   guibg=#0d7268   gui=NONE    cterm=NONE
" VisualNOS - x11 only: select in vim and after select in xterm
hi VisualNOS    guifg=#f8f8f8   guibg=#ac39ac   gui=NONE    cterm=NONE

hi Search       guifg=bg        guibg=#9ed279   gui=NONE    cterm=NONE
hi CurSearch    guifg=bg        guibg=#d0e6b3   gui=bold    cterm=bold
" (:set incsearch)
hi IncSearch    guifg=NONE      guibg=NONE      gui=reverse cterm=reverse

" Cursor colors for normal and diff modes
hi CursorNorm   guifg=bg        guibg=#17c8c7   gui=NONE    cterm=NONE
hi CursorDiff   guifg=#ffffff   guibg=#be3fbe   gui=NONE    cterm=NONE
function! s:HiCursor()
  if &diff
    hi! link  Cursor  CursorDiff
  else
    hi! link  Cursor  CursorNorm
  endif
endfunction
call s:HiCursor()
if has("autocmd")
  autocmd OptionSet diff
        \ call s:HiCursor()
endif

" cursor when language-mapping is used
hi lCursor      guifg=bg        guibg=#ccf20d   gui=NONE    cterm=NONE
" cursor when IME mode is enabled
if has('multi_byte_ime')
  hi CursorIM   guifg=bg        guibg=#ccf20d   gui=NONE    cterm=NONE
endif

" (:set cursorline, :set cursorcolumn)
hi CursorLine                   guibg=#065d55   gui=NONE    cterm=NONE
hi! link  CursorLineFold  CursorLine
hi! link  CursorLineSign  CursorLine
hi CursorColumn                 guibg=#065d55   gui=NONE    cterm=NONE

" (:set number)
hi LineNr       guifg=#b2cb62   guibg=#063833   gui=NONE    cterm=NONE
hi! link  LineNrAbove   LineNr
hi! link  LineNrBelow   LineNr
hi CursorLineNr guifg=#c5d888   guibg=#065d55   gui=NONE    cterm=NONE

" (:set cc=+1)
hi ColorColumn                  guibg=#913030   gui=NONE    cterm=NONE

" paired brackets
hi MatchParen   guifg=bg        guibg=#f8f88f   gui=NONE    cterm=NONE
if has("autocmd")
  autocmd InsertEnter *
        \ hi MatchParen         gui=reverse     cterm=reverse
  autocmd InsertLeave *
        \ hi MatchParen         gui=NONE        cterm=NONE
endif

" characters that do not really exist in the text (:set list)
hi NonText      guifg=#cc6666   guibg=#063833   gui=NONE    cterm=NONE
hi! link  EndOfBuffer   NonText
" text that is displayed differently from what it really is
hi SpecialKey   guifg=#ffa2a2   guibg=#063833   gui=NONE    cterm=NONE

" folding and column where signs
hi Folded       guifg=#66cc7f   guibg=#042a26   gui=NONE    cterm=NONE
hi FoldColumn   guifg=#8bd09c   guibg=#063833   gui=NONE    cterm=NONE
hi SignColumn                   guibg=#063833   gui=NONE    cterm=NONE

" colors of status line, tabs and menus are close to the Airline deus theme
hi StatusLine   guifg=#badf9f   guibg=#212c2b   gui=None      cterm=NONE
hi StatusLineNC guifg=#78b04f   guibg=#212c2b   gui=NONE      cterm=NONE
hi WildMenu     guifg=#b8ef8f   guibg=#212c2b   gui=underline cterm=underline

" column separating vertically split windows
hi VertSplit    guifg=#98c378   guibg=#98c378   gui=NONE    cterm=NONE

" tab-page titles
hi TabLineFill  guifg=#212c2b                   gui=NONE    cterm=NONE
hi TabLineSel   guifg=#212c2b   guibg=#98c379   gui=bold    cterm=NONE
hi TabLine      guifg=#98c379   guibg=#212c2b   gui=NONE    cterm=NONE

" popup completion menu
hi Pmenu        guifg=#212c2b   guibg=#98c378   gui=NONE    cterm=NONE
hi PmenuSel     guifg=#98c378   guibg=#212c2b   gui=NONE    cterm=NONE
" note that the popup menu scrollbar is not intended for mouse
hi PmenuSbar                    guibg=#042a26   gui=NONE    cterm=NONE
hi PmenuThumb                   guibg=#669966   gui=NONE    cterm=NONE

" (:echohl WarningMsg | echo "Colored warnging message")
hi WarningMsg   guifg=#ff8888   guibg=#042a26   gui=NONE    cterm=NONE
hi ErrorMsg     guifg=#ffff00   guibg=#913030   gui=NONE    cterm=NONE

" titles for output in vim and titles in some syntax files
hi Title        guifg=#95eb15   guibg=bg        gui=NONE    cterm=NONE
" hit-enter prompt (!ls or :set all)
hi! link  Question      Title
hi! link  MoreMsg       Title

" (:set showmode) and widely used in cmake.vim
hi ModeMsg      guifg=#fff2b2   guibg=bg        gui=NONE    cterm=NONE
" (:Texplore)
hi Directory    guifg=#6bcbfb   guibg=bg        gui=bold    cterm=NONE
" (:grep or :vimgrep "something" {files})
hi QuickFixLine guifg=NONE      guibg=NONE      gui=reverse cterm=reverse

" Spell Checking 'guisp' sets the color for the underline curl
" --------------
hi SpellBad     guisp=#ffc7c7   guibg=#5d3232   gui=undercurl cterm=underline
hi SpellCap     guisp=#ccccff   guibg=#24246b   gui=undercurl cterm=underline
" (:set spell spelllang=en_us) centre center, color colour
hi SpellLocal   guisp=#00ebeb   guibg=bg        gui=undercurl cterm=underline
" it seems there are no rare words in the vim-dictionary
hi SpellRare    guisp=#ffbdff   guibg=#562e56   gui=undercurl cterm=underline

" Diff Mode
" ---------
hi DiffChange   guifg=#000000   guibg=#a3ccf5   gui=NONE    cterm=NONE
hi DiffText     guifg=#000000   guibg=#65b3ff   gui=NONE    cterm=NONE
hi DiffAdd      guifg=bg        guibg=#a9f0a9   gui=NONE    cterm=NONE
hi DiffDelete   guifg=bg        guibg=#ebe1af   gui=NONE    cterm=NONE

" Syntax Highlight
" ----------------
hi Comment        guifg=#ffca80 guibg=bg        gui=NONE    cterm=NONE
hi SpecialComment guifg=#ffca80 guibg=bg        gui=italic  cterm=italic

hi Constant     guifg=#88e8a8   guibg=bg        gui=NONE    cterm=NONE
hi! link  Float         Constant
hi! link  Number        Constant
hi! link  Boolean       Constant

hi String       guifg=#b8e8e8   guibg=bg        gui=NONE    cterm=NONE

hi Character    guifg=#e3ed7f   guibg=bg        gui=NONE    cterm=NONE
hi! link  SpecialChar   Character
hi! link  Delimiter     SpecialChar

hi Identifier   guifg=#ffffff   guibg=bg        gui=NONE    cterm=NONE
hi! link  Function      Identifier

hi Statement    guifg=#ffffff   guibg=bg        gui=NONE    cterm=NONE
hi! link  Conditional   Statement
hi! link  Repeat        Statement
hi! link  Label         Statement
hi! link  Operator      Statement
hi! link  Keyword       Statement
hi! link  Exception     Statement

hi PreProc      guifg=#bff28c   guibg=bg        gui=NONE    cterm=NONE
hi! link  Include       PreProc
hi! link  Define        PreProc
hi! link  Macro         PreProc
hi! link  PreCondit     PreProc

hi Type         guifg=#99ddff   guibg=bg        gui=NONE    cterm=NONE
hi! link  StorageClass  Type
hi! link  Structure     Type
hi! link  Typedef       Type

" texMath is linked to Special in tex.vim
hi! link  Special       PreProc

hi Error        guifg=#ffffff   guibg=#913030   gui=bold    cterm=bold

" Note: TODO, FIXME ... XXX
hi Todo         guifg=bg        guibg=#a1c587   gui=bold    cterm=NONE

hi Underlined   guifg=NONE      guibg=NONE      gui=underline cterm=underline

" GitGutter plugin: colors are as in diff mode but bg and fg are swapped
" ----------------
hi GitGutterChange  guifg=#65b3ff  guibg=#063833  gui=bold  cterm=NONE
hi GitGutterAdd     guifg=#a9f0a9  guibg=#063833  gui=bold  cterm=NONE
hi GitGutterDelete  guifg=#ebe1af  guibg=#063833  gui=bold  cterm=NONE
hi! link  GitGutterChangeDeleteLine  GitGutterChange

" Color terminal: colors borrowed from Neo Dark/Light term-themes
" --------------
function! s:TermAnsiColors()
  " NOTE: if colors are specified using the 'g:terminal_ansi_colors',
  "       the 'g:paradox_term' variable changes only the background
  if !exists('g:paradox_term') || g:paradox_term < 0
    " Dark background (default)
    hi Terminal   guifg=#fffbe8   guibg=#004b3f   gui=NONE    cterm=NONE
    let s:my_term_colors = [
          \'#133b34','#ff8f8f','#00cc00','#ffd500',
          \    '#80bfff','#e599ff','#00cccc','#e8dfb6',
          \'#004b3f','#ffbbba','#66ff66','#ffff33',
          \    '#99e6ff','#ffb3ec','#03ffff','#fffbe8' ]
  elseif exists('g:paradox_term') && g:paradox_term > 0
    " Light background
    hi Terminal guifg=#004b3f   guibg=#fffbe8   gui=NONE    cterm=NONE
    let s:my_term_colors = [
          \'#133b34','#c22222','#167116','#806100',
          \    '#3c3cdc','#971b97','#0b7373','#e8dfb6',
          \'#004b3f','#f21010','#0a9109','#ffd500',
          \    '#6262ff','#cc0bcc','#009494','#fffbe8' ]
  endif
  if !exists('g:terminal_ansi_colors')
    call term_setansicolors('%', s:my_term_colors)
  endif
endfunction
if has("autocmd")
  autocmd TerminalWinOpen *
        \ call s:TermAnsiColors()
endif
hi! link  StatusLineTerm    StatusLine
hi! link  StatusLineTermNC  StatusLineNC

" Are these useful?
" ----------------
hi Debug           guifg=#fdd0d0 guibg=NONE     gui=NONE    cterm=NONE
hi debugPC         guifg=#fdd0d0 guibg=NONE     gui=reverse cterm=reverse
hi debugBreakpoint guifg=#fdd000 guibg=NONE     gui=reverse cterm=reverse

hi Conceal      guifg=#888888   guibg=NONE      gui=NONE    cterm=NONE
hi Ignore       guifg=NONE      guibg=NONE      gui=NONE    cterm=NONE

" GUI (:set guioptions+=T)
" depends on the system and in most cases does not work
" hi ToolbarLine   guifg=NONE     guibg=#ffffff   gui=NONE    cterm=NONE
" hi ToolbarButton guifg=#ffffff  guibg=#000000   gui=bold    cterm=NONE

" ----------------
" vim: et ts=8 tw=80
