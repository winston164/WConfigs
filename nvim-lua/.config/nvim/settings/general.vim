" set leader key
let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighing
set nocompatible                        " Non compatible with vi
set hidden                              " Required to keep multiple buffers open multiple buffers
set backspace=indent,eol,start          " Allow backspacing over autoindent, line breaks and start of insert action
set ignorecase                          " Use case insensitive search, except when using capital letters
set smartcase
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			" Show the cursor position all the time
set wildmenu                            " Better command-line completion
set showcmd                             " Show partial commands in the last line of the screen
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set visualbell                          " Use visual bell instead of beeping
set t_vb=                               " No flashing for visualbell
set hlsearch                            " Highlight searches
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set softtabstop=2                       " Insert 2 spaces for a tab
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number relativenumber               " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set confirm                             " Instead of failing a command because of unsaved changes, instead raise a " dialogue asking if you wish to save changed files.
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
" set notimeout 
set timeoutlen=500   " By default timeoutlen is 1000 ms
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set autoread                            " Read modified documents
"set autochdir                           " Your working directory will always be the same as your working directory



" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

