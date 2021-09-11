
" Pluggins 
"
" Plugged automatic install and startup
" 
"
" Install vim-plug if not found
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Iniciate Plugged plugin manager and plugged's pluggins
call plug#begin('~/.config/plugged')

    " Completion engine Conquer of Completion
    " Use release branch (recommend)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " NerdTree
    "Plug 'scrooloose/nerdtree'
    "Plug 'Xuyuanp/nerdtree-git-plugin'
    "Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    " NerdCommenter
    Plug 'scrooloose/nerdcommenter'

    " Themes
    Plug 'joshdick/onedark.vim'
    Plug 'adrian5/oceanic-next-vim'
    Plug 'crusoexia/vim-monokai'

    " Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Fuzzy finder
    Plug 'ctrlpvim/ctrlp.vim'

    " Which key
    Plug 'liuchengxu/vim-which-key'

    " Syntax Highlight for tsx
    Plug 'HerringtonDarkholme/yats.vim'

    " Syntax Highlight for jsx"
    "Plug 'othree/yajs.vim'
    Plug 'yuezk/vim-js'
    Plug 'maxmellon/vim-jsx-pretty'


    " Html Syntax"
    Plug 'othree/html5.vim'


call plug#end()
