set nocompatible

set t_Co=256
colorscheme grb256

set shortmess+=I  "hide the normal startup message

set hidden

" change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> <leader>sn :e ~/Dropbox/notes<CR>


execute pathogen#infect('bundle/{}', '~/dotfiles/vim/bundle/{}')
syntax on
filetype plugin indent on

set backspace=indent,eol,start

autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
set title

set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  " case-sensitive otherwise
set smarttab      " insert tabs on the start of a
                  " line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set expandtab     " insert spaces when pressing tab


if executable('ag')
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
    let g:agprg="ag --column"
endif

"ctrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'

" open ag.vim
nnoremap <leader>a :Ag


augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.scala,*.md
                \:call <SID>StripTrailingWhitespaces()
    autocmd FileType java setlocal noexpandtab
    autocmd FileType java setlocal list
    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
    autocmd FileType scala setlocal noexpandtab
    autocmd FileType scala setlocal list
    autocmd FileType scala setlocal listchars=tab:+\ ,eol:-
    autocmd FileType scala setlocal formatprg=par\ -w80\ -T4
    autocmd FileType php setlocal expandtab
    autocmd FileType php setlocal list
    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END

"https://github.com/b3niup/numbers.vim
nnoremap <silent> <F2> :NumbersToggle<CR>
inoremap <C-c> <Esc><Esc>
"inoremap <silent> <Esc> <C-O>:stopinsert<CR> " stop cursor from jumping around when leaving insert mode
inoremap jj <ESC>

let g:numbers_enable = 0


:set fillchars+=vert:\  "set vertical divider to nothing

if &shell =~# 'fish$'
  set shell=/bin/bash
endif

set autoread        " automatically re-load changed files

"set laststatus=2
set ruler
set showcmd
set wildmenu

if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

set nobackup
set noswapfile

"set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.

