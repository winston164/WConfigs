" Theme
" syntax on
" for vim 7
" set t_Co=256

" for vim 8
 if (has("termguicolors"))
  set termguicolors
 endif

syntax on
let g:oceanic_gutter_like_bg = 1
let g:oceanic_transparent_bg = 1
let g:oceanic_bold = 1
let g:oceanic_italic_comments = 1

colorscheme oceanicnext

hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

