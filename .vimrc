call plug#begin('~/.vim/plugged')

Plug 'gmarik/Vundle.vim'
Plug 'tpope/vim-fugitive'
Plug 'maksimr/vim-jsbeautify'
Plug 'Valloric/YouCompleteMe'
Plug 'einars/js-beautify'
Plug 'jelera/vim-javascript-syntax'
Plug 'scrooloose/nerdtree'
Plug 'Shutnik/jshint2.vim'
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Quramy/tsuquyomi'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'

call plug#end()

syntax enable
colo solarized

filetype plugin indent on
set number "enable line number
set laststatus=2 "enable status line
set ruler "enable line, column number on status line
set backspace=2 "make backspace work like most other apps
set tabstop=2 expandtab shiftwidth=2 "set tab size as 2 space
set mouse=a "enable mouse

" set tsc for typescript files
autocmd FileType typescript :set makeprg=tsc

" TSU + syntastic integration
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tslint','tsuquyomi']
let g:syntastic_always_populate_loc_list = 1

" YCM ts support
if !exists("g:ycm_semantic_triggers")
 let g:ycm_semantic_triggers = {}
 endif
 let g:ycm_semantic_triggers['typescript'] = ['.']
