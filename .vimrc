set laststatus=2

set encoding=utf-8
"set ffs=unix

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set list
"set listchars=tab:»\ ,trail:·,eol:$
set listchars=tab:»\ ,trail:·

set lbr
"set tw=80
set ai
set si
"set spell

syntax on
filetype on
set number
set nowrap

set wildmode=longest,list
set wildmenu
set ruler
set autoread
set nobackup
set nowb
set noswapfile
set showmatch
set mat=2

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

"set clipboard=unnamed

highlight Comment ctermfg=magenta
highlight ExtraWhitespace ctermfg=white ctermbg=red

match ExtraWhitespace /\s\+$\|^\s*\t/

"set spell spelllang=en_gb
