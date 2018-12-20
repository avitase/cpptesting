" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expression contains a capital letter
set hlsearch " highlight search results
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

" Appearance
set background=dark " set background
set laststatus=2 " show the status line all the time
set number " show line numbers
set relativenumber " turn on relative numbering
set autoindent " automatically set indent of new lines
set ttyfast " faster redrawing
set title " set terminal title
set showmatch " show matching braces

" Tab control
set expandtab " insert spaces rather than tabs for <Tab>
set tabstop=4 " visible width of tabs
set shiftwidth=4 " number of spaces to use for (un)indent 
set softtabstop=4 " edit as if the tabs are 4 characters

syntax on

autocmd FileType cpp highlight OverLength ctermbg=red ctermfg=white guibg=#592929
autocmd FileType cpp match OverLength /\%81v.\+/
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end() 

filetype plugin indent on
