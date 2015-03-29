set nocompatible

syntax on
set title
set number

" all lines below from gh/gerhard/setup (comment and sets)
" Additions from http://mislav.uniqpath.com/2011/12/vim-revisited/
" set nowrap                      " don't wrap lines
" set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
" just to here :-)


" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" makefiles with tabs
autocmd FileType make setlocal noexpandtab


" ---------------- plugins
" tpope's pathogen
execute pathogen#infect()

" NERDTree
" autocmd vimenter * NERDTree
:nmap n :NERDTreeToggle<CR>

" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Airline
set laststatus=2
let g:airline_theme = 'powerlineish'

" TagBar
" autocmd vimenter * TagbarOpen
" autocmd vimenter *.php TagbarOpen

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
