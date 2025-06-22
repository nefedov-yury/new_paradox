---------------------------------------------------------------------------
## new_paradox.vim

* This is Vim color scheme with dark blue-green background.
  Works in GUI or truecolor terminals.

* This is a modification of the paradox color scheme made with
  the intention of improving the readability of text.

* Best used with vim-airline **deus** theme.

* Sets the colors for the
  [Rainbow plugin](https://github.com/luochen1990/rainbow)
  for displaying paired brackets.

---------------------------------------------------------------------------
## Installation

* Vim 8 built-in package, see `:help packages`
  and search for `colorscheme`.

* Loaded with `:colorscheme new_paradox`.

---------------------------------------------------------------------------
## Notes

This is a modification of the paradox color scheme. The theme modification
was intended to improve the readability of the text.

As one of the criteria of readability I used the concept of contrast
between the text color and the background color. The estimate of
such contrast was carried out using two methods:
1. [WCAG 2.x contrast ratio calculation](
https://www.w3.org/TR/WCAG20/#contrast-ratiodef)
2. [Advanced Perceptual Contrast Algorithm](
https://github.com/Myndex/SAPC-APCA)

The implementation of both algorithms is contained in the Python
program [`tools/contrast_rgb.py`](tools/contrast_rgb.py)

Please note that good readability of text depends not only on the chosen
colors, but also on many other factors. Font type, font size, screen
resolution and rendering algorithm all affect the visibility and therefore
readability of text. I used the following fonts with this theme:
* MacOS, Retina XDR display
  * `MacVim:         guifont=Source\ Code\ Pro:h16`
  * `vim in iTerm2:  Input Mono Narrow Regular; 17`
* Linux, X11, 96dpi LCD
  * `gvim:           guifont=Source\ Code\ Pro\ Regular\ 12`
  * `vim in xterm:   Input Mono; faceSize: 12`

The particularities of each individual's personal perception of
colors are also important. A very good article by Andrew Somers on
this topic is [*The Realities And Myths Of Contrast And Color*](
https://www.smashingmagazine.com/2022/09/realities-myths-contrast-color/
).

The contrast for graphic elements (cursor, fold-line etc.) may be low and
preference is given to good visibility of the text on them.

---------------------------------------------------------------------------
