" Key Mappings



" Remap Esc
inoremap jj <Esc> 

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <C-Up>    :resize -2<CR>
nnoremap <C-Down>    :resize +2<CR>
nnoremap <C-Right>    :vertical resize -2<CR>
nnoremap <C-Left>    :vertical resize +2<CR>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>


" Explorer
nnoremap <space>ft :CocCommand explorer<CR>

" Comments
vmap <C-_> <plug>NERDCommenterToggle
nmap <C-_> <plug>NERDCommenterToggle

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> :nohl<CR><C-L><C-w>l

" Clean search
nnoremap <C-c> :nohl<CR>

nnoremap <space>wh <C-w>h
nnoremap <space>wj <C-w>j
nnoremap <space>wk <C-w>k
nnoremap <space>wl <C-w>l

nnoremap <space>wv :vsplit<cr>
nnoremap <space>wx :split<cr>
" Easier buffer delete
nnoremap <space>bd :vsplit<cr> <C-w>h :bnext<cr> <C-w>l :bd<cr>

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da


" Normal mode for terminal
tnoremap jj <c-w>N
