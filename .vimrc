" This is Akkilah VIMRC File 
"
"
"
" last update May8 2020
"
"


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'marijnh/tern_for_vim' " JS Autocomple Plugin
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Basic Setting
set number "Show linr number i
set relativenumber
set wildmode =longest,list,full " Enable autocompletion :
syntax on " Turn on syntax highlighting.
set splitbelow splitright "Split open at bottom and right , unlike the defult
set incsearch " Enable searching as you type, rather than waiting till you press enter.
set mouse+=a " Enable mouse support. You should avoid relying on this too much, but it can
	" This setting makes search case-insensitive when all characters in the string
	" being searched are lowercase. However, the search becomes case-sensitive if
	" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

set sw =4 " This  will tabs same as 4 spaces in normal mode but not insert mode
set ts =4 " The actuall setting for tabs to be 4 spaces 
set sts=4 " The insert mode setting for tab

" some vim clipboard is not even enable so this will not work
set clipboard=unnamedplus " use system clipboard as default system
" backspace works normal 
set backspace=indent,eol,start
"KEY BUINDING
"

map <F6> :setlocal spell! spelllang=en_us<CR> "Enable spell checker 
map <C-n> :NERDTreeToggle<CR> 


"COC MUST HAVE 
"
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)






"VARIABLE 
let g:airline_theme='murmur'
autocmd vimenter * colorscheme gruvbox
:set bg=dark " Changing the gruvbox to the dark mode

:set list    " to able to show indent 
:set lcs=tab:\|\  " the last character is space!
:set list listchars=tab:\|\.
" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

