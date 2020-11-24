"Inspirated from https://realpython.com/vim-and-python-a-match-made-in-heaven/
"Author: Davide Isoardi
"mail: davide.isoardi@valuepartners.com
"github: https://github.com/disoardi

"to autoinstall of vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-fugitive' " script commit action
Plug 'scrooloose/nerdtree' " folder navigation
Plug 'scrooloose/syntastic' " syntax hightlight
"Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'vim-airline/vim-airline' " bootm bar
Plug 'airblade/vim-gitgutter' " in line sign for diff
Plug 'altercation/vim-colors-solarized' " color scheme
" List ends here. Plugins become visible to Vim after this call.
call plug#end()


" Set split
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
" Indent
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" UTF-8
set encoding=utf-8

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let python_highlight_all=1
syntax on

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Line number
set nu

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" color schema definition
" set background=dark
" colorscheme solarized

" Clipboard
set clipboard=unnamed

