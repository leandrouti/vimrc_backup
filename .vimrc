so ~/.vim/plugins.vim

syntax on
"set smartindent
set number
set list

set backspace=indent,eol,start

set shiftwidth=4
set tabstop=4

set expandtab
set softtabstop=4
set shiftround
set autoindent
set autochdir

"----Visuals----"
"colorscheme atom
colorscheme elflord
set linespace=8
set t_CO=256  "Use 356 colors.

"----Search----"
set hlsearch
set incsearch
set wrap!  "Stop line-wrap

"----File Encoding----"
set encoding=utf-8
set fileformats=unix,dos,mac
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8

"-----Key Mappings----"
nmap ,ev :tabedit $MYVIMRC<cr>
nmap ,www :e d:\laragon\www\
nmap ,todo :e todo.txt<cr>

"----Add simple highlight removal"
nmap ,<space> :nohlsearch<cr>


"----Split Management---"
set splitbelow
set splitright
"Goto split in bottom 
nmap <C-J> <C-W><C-J>
"Goto split in right
nmap <C-L> <C-W><C-L>
"Goto split in left
nmap <C-H> <C-W><C-H>
"Goto split in upper
nmap <C-K> <C-W><C-K>
nmap <C-B> :NERDTreeToggle<cr> 
"CTRL+\ open new horizontal split
nmap <C-\> :vsp<cr>
nmap <C-E> :CtrlPMRUFiles<cr>


"----Plugins---"
"/
"/CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_max_files = 0

"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0


"----Auto-Commands----"

"Automatically source the Vimrc file on save.
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
    autocmd BufEnter * lcd %:p:h
augroup END

