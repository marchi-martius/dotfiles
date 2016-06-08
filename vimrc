set nocompatible

set background=dark

set number
set numberwidth=6
set ruler
set cursorline

set backspace=indent,eol,start
set list listchars=tab:»·,trail:·

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set laststatus=2

set history=10000
set showcmd

set incsearch
set hlsearch

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set wildmode=longest,list
set wildmenu

set winwidth=85
set colorcolumn=81

set encoding=utf-8

set modeline
set modelines=3

set stal=2

syntax on

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  filetype plugin indent on

  autocmd FileType ruby,haml,eruby,yaml set ai sw=2 sts=2 et
  autocmd FileType html,javascript,coffee,sass,scss,cucumber,json set ai sw=2 sts=2 et
  autocmd FileType python set sw=4 sts=4 et

  autocmd! BufRead,BufNewFile *.sass setfiletype sass
  autocmd! BufRead,BufNewFile Guardfile setfiletype ruby

  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
  autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:&gt;

else

  set autoindenti

endif

filetype plugin on
set omnifunc=syntaxcomplete#Complete
