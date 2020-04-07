"""""""""""""""""""""""""
" VIMRC file by failipp "
"""""""""""""""""""""""""

" Basic settings {{{
syntax enable "Syntax highlighting
set nocompatible "Set vim to todays millenium

set encoding=utf-8 " Encoding
set fileencoding=utf-8 " Encoding of the file itself

set wildmenu "Autocomplete menu
set path+=** "Fuzzy file finder

set incsearch "Search during input
set hlsearch "Highlight search
set ignorecase "Case insensitive searching
set scrolloff=5 "7 lines above and below the search result

"correct split behaviour
set splitright
set splitbelow

set backspace=indent,eol,start "correct behaviour of the backspace key
set foldmethod=marker

set tabstop=4 "Tabs are whitespaces
set softtabstop=4 "Tab inputs 4 whitespaces
set expandtab "Tab equals whitespaces
set shiftwidth=4 "Correct indentation when using < >

" shell is supposed to always be bash
set shell=bash
" }}}

" Plugin management {{{
"Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim "Add vundle to runtimepath
" Vundle stuff
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'othree/html5.vim'
Plugin 'sjl/badwolf'
Plugin 'w0rp/ale'
Plugin 'davidhalter/jedi-vim'
Plugin 'dag/vim-fish'
" Plugin 'liuchengxu/space-vim-dark'
" Plugin 'flazz/vim-colorschemes'
" Plugin 'vim-latex/vim-latex'
Plugin 'jezeniel/vim-renpy'
Plugin 'ElmCast/elm-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'cespare/vim-toml'

call vundle#end()

filetype plugin indent on
" }}}

" Change of looks {{{
colorscheme badwolf
" set termguicolors

hi! NonText guibg=NONE ctermbg=NONE
hi! Normal guibg=NONE ctermbg=NONE
hi! LineNr guibg=NONE ctermbg=NONE
hi! SignColumn guibg=NONE ctermbg=NONE
hi! Folded guibg=NONE ctermbg=NONE

set relativenumber "Show relative line numbers
set number "Show absolute line number in current line
set ruler "Show position of cursor
set showcmd "Show command in lower left corner
set cursorline "Highlight current line

set showmatch "Show matching parenthesis
set matchtime=2 "Decrease showmatch time
" }}}

" FileType autocommands {{{
" Commenting a line with press of two buttons
augroup commenting
    au!
    autocmd FileType python nnoremap <buffer> <localleader>c I# <esc>
    autocmd FileType vim nnoremap <buffer> <localleader>c I" <esc>
    autocmd FileType tex nnoremap <buffer> <localleader>c I% <esc>
    autocmd FileType conf nnoremap <buffer> <localleader>c I# <esc>
    autocmd FileType conf setlocal formatoptions-=cro
augroup END

augroup running_code
    au!
    autocmd FileType python nnoremap <buffer> <localleader><localleader> :!env python3 %<CR>
augroup END

augroup filetype_python
    au!
    " Abbreviation for new class
    autocmd FileType python iabbrev <buffer> newclass class:<cr>def __init__(self):<cr>pass<esc>kk$i
    " Needed to fit the allmighty PEP8
    " autocmd FileType python setlocal textwidth=79
    " Folding in python files
    autocmd FileType python setlocal foldmethod=indent foldlevel=20
augroup END

augroup filetype_vim
    au!
    " Set up folding in vimrc
    autocmd FileType vim setlocal foldlevelstart=0
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType vim setlocal textwidth=0
augroup END

augroup filetype_html
    au!
    " autocmd FileType html setlocal tabstop=2 softtabstop=2 expandtab shiftwidth=2
    " reindentation at loading of html file
    " autocmd BufRead *.html normal gg=G
augroup END

augroup filetype_txt
    au!
    autocmd FileType text setlocal foldmethod=marker
augroup END

augroup filetype_tex
    au!
    autocmd FileType tex setlocal foldmethod=indent foldlevel=10
    " autocmd FileType tex nnoremap <buffer> <localleader>m :w<cr>:!pdflatex --output-directory ./tex --shell-escape %<cr>
    autocmd FileType tex nnoremap <buffer> <localleader>m :w<cr>:!~/.vim/vimtemplates/latexcompile.py once %<cr>
    autocmd FileType tex nnoremap <buffer> <localleader>n :w<cr>:!~/.vim/vimtemplates/latexcompile.py full %<cr>
    autocmd FileType tex inoremap <buffer> ;b \begin{}<esc>i
    autocmd FileType tex inoremap <buffer> ;e \end{}<esc>i
augroup END

augroup filetype_java
    au!
    autocmd FileType java setlocal foldmethod=indent foldlevel=20
    autocmd FileType java nnoremap <buffer> <localleader>r :edit<CR>
    autocmd FileType java setlocal tabstop=2 "Tabs are whitespaces
    autocmd FileType java setlocal softtabstop=2 "Tab inputs 2 whitespaces
    autocmd FileType java setlocal expandtab "Tab equals whitespaces
    autocmd FileType java setlocal shiftwidth=2 "Correct indentation when using < >
augroup END

augroup filetype_cpp
    au!
    autocmd FileType cpp setlocal foldmethod=indent foldlevel=20
    autocmd FileType cpp setlocal tabstop=2 "Tabs are whitespaces
    autocmd FileType cpp setlocal softtabstop=2 "Tab inputs 2 whitespaces
    autocmd FileType cpp setlocal expandtab "Tab equals whitespaces
    autocmd FileType cpp setlocal shiftwidth=2 "Correct indentation when using < >
augroup END
" }}}

" Custom mappings {{{
let mapleader="ö" "Leader key - best thing to do on a german keyboard!!
let maplocalleader="ä" "Local leader key

"Make folding simpler
nnoremap <space> za

"Save mapping
nnoremap <leader>ww :w<CR>
nnoremap <leader>wa :wa<CR>

nnoremap ZA :xa<CR>

"Make highlighting to go away
nnoremap <leader>h :nohlsearch<CR> 

"Sane way of jumping between panes
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"
nnoremap <leader>y :wv<CR>
nnoremap <leader>p :rv<CR>

"jump between visual lines
nnoremap j gj
nnoremap k gk

inoremap ;K ;<Esc>
inoremap :; <Esc>
inoremap ;: <Esc>

"search for TODO
nnoremap <leader>ft /TODO<CR>
nnoremap <leader>tt 't

"disable Ctrl-A
"nnoremap <c-a> <Nop>

"reload vimrc with re
nnoremap <leader>re :source $MYVIMRC<CR>

"edit vimrc
nnoremap <leader>rc :vsplit $MYVIMRC<CR>
" nnoremap <leader>rc :!terminal -e "vim"$MYVIMRC<CR><CR>

"load templates
nnoremap <leader>html :read ~/.vim/vimtemplates/base5.html<CR>gg
nnoremap <leader>tex :read ~/.vim/vimtemplates/studium.tex<CR>kddGkk

" BREAKING HABITS, MAKING HABITS
"diable arrow keys
"nnoremap <Up> <Nop>
"nnoremap <Down> <Nop>
"nnoremap <Left> <Nop>
"nnoremap <Right> <Nop>

" Wrap visually selected text in "quotes"
vnoremap <leader>q <esc>`<i"<esc>`>a"<esc>
vnoremap <leader>p <esc>`<i(<esc>`>a)<esc>
" }}}

" Plugin options {{{

""" ale syntax plugin

" mapping for fixing code
nnoremap <leader>ale :ALEFix<CR>
nnoremap <leader>ade :ALEDetail<CR>

" setting which fixer is used to fix certain languages
let g:ale_linters = {
            \'asm': [],
            \'tex': [
            \   'chktex',
            \   'write-good',
            \],
            \}

let g:ale_java_google_java_format_options = '-a'
let g:ale_c_clangformat_options = '--style=Google'

let g:ale_fixers = {
            \'python': [
            \   'yapf',
            \   'isort',
            \],
            \'java': [
            \   'google_java_format',
            \],
            \'json': [
            \   'fixjson',
            \],
            \'cpp': [
            \   'clang-format',
            \],
            \}


""" jedi-vim

" force jedi-vim to use python3
let g:jedi#force_py_version = 3
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_fist = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#use_splits_not_buffers = 'right'

""" CtrlP fuzzy file finder

" Setup some default ignores
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
    \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
nmap <leader>o :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

""" Buffergator

" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1

" Looper buffers
"let g:buffergator_mru_cycle_loop = 1

" Go to the previous buffer open
nmap <leader>jj :BuffergatorMruCyclePrev<cr>

" Go to the next buffer open
nmap <leader>kk :BuffergatorMruCycleNext<cr>

" View the entire list of buffers open
nmap <leader>bl :BuffergatorOpen<cr>

" }}}
