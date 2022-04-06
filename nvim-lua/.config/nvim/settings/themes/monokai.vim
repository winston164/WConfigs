syntax on

let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

colorscheme monokai


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    "hi LineNr ctermbg=NONE guibg=NONE
endif

hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

