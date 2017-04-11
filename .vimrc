set t_Co=256

if has("syntax")
	syntax on
endif
set novisualbell
set hlsearch
colorscheme cobalt2

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle

call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'tpope/vim-surround'
"Bundle 'Valloric/YouCompleteMe'

let g:airline_theme='laederon'
set laststatus=2

filetype plugin indent on

nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTree<CR>
" below commented out as it seems there might be a conflict with ssh clients
" this needs to be tested locally
" http://vim.wikia.com/wiki/Switch_between_Vim_window_splits_easily

nmap <A-Up> :wincmd k<CR>
nmap <A-Down> :wincmd j<CR>
nmap <A-Left> :wincmd h<CR>
nmap <A-Right> :wincmd l<CR>

" below is to provide easier movement between tabs

map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>

" F5 now lets you enter a timestamp, how handy!
nnoremap <F5> "=strftime("%c")<CR>P
nmap <F5> "=strftime("%c")<CR>P
inoremap <F5> <C-R>=strftime("%c")<CR>
