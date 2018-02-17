"
"nifty tips an tr1cks:
"   -> '!' after a boolean option toggles it, '?' returns its value
"   .> onoremap is for movement commands
"

" Conventions {{{
"   -> Toggling something : <leader>t...
" }}}

" Vundle & Plug {{{

filetype off
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'itchyny/lightline.vim'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'

call vundle#end()


call plug#begin('~/.vim/plugged')

Plug 'dylanaraps/wal.vim'

call plug#end()

filetype plugin indent on

"}}}

" Colors {{{

"""pywal colorscheme
colorscheme wal

"""solarized colorscheme
"set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256

"""highlights
highlight Folded ctermbg=darkgrey ctermfg=lightgrey
highlight FoldColumn ctermbg=darkgrey ctermfg=lightgrey
highlight Error ctermbg=darkred

"""lightline
"let g:lightline {
"/ 'colorscheme' : 'wal',
"/}

"}}}

" Variables {{{

"basically the key for most custom mappings
let mapleader = ","
"--||-- lzocally
let maplocalleader = "m"

"used to punish bad behaviour
let bad = "BADBADBADBADBADBADBADBADBAD"

"}}}

" Punishment {{{

"for using the arrow keys
noremap <up> :echo bad<cr>
noremap <right> :echo bad<cr>
noremap <down> :echo bad<cr>
noremap <left> :echo bad<cr>

"}}}

" General Options {{{

"toggle lightline
"call lightline#toggle()
"nnoremap <leader>tll :call lightline#toggle()<cr>

set laststatus=2 "always have status-line

set number "show line numbers
set relativenumber "show line numbers relative to position

syntax on 
set showmatch "shows matching braces
set autoindent "autoindent lines
set smartindent "smartindent lines
set smarttab "smarttab
"set spell "spellchecking

set tabstop=4 "how many spaces are inserted when reading a <tab> character
set softtabstop=4 "how many are inserted when pressing <tab> 
set expandtab "<tab> now just means 4 spaces
set shiftwidth=4 "how many spaces are shifted when shifting

"set cursorline "highlight current line
set wildmenu "show visual menu for tab completion
set lazyredraw "redraw more seldomly for faster macros

set incsearch "search as characters are entered
set hlsearch "highlight matches

set scrolloff=999 "always move window around cursor

"}}}

" General Remaps {{{

" Functions {{{
    function! ToggleStatusLine()
        if &laststatus
            set laststatus=0
        else
            set laststatus=2
        endif
    endfunction
"}}}

"toggle status-line
nnoremap <leader>ts :call ToggleStatusLine()<cr>

"-> windows
"split the current file into +1 windows
nnoremap ü :split<CR>
"close current window
nnoremap <leader>ü :close<CR>
"move between tabs
nnoremap <leader><leader> <C-w><C-w>

"uppercasing words with ctrl-u
inoremap <c-u> <esc>viwU<esc>i
nnoremap <c-u> viwU<esc>

"-> vimrc
"open vimrc custom remaps in new window
nnoremap <leader>cr :split $MYVIMRC<cr>/- custom remaps -<cr>
"open vimrc abbreviations in new window
nnoremap <leader>abr :split $MYVIMRC<cr>/- abbreviations -<cr>nn
"reload vimrc
nnoremap <leader>r :source $MYVIMRC<cr>

"toggle spellcheck
map <F6> :set spell!<Enter>

"highlight the last inserted block
nnoremap gV `[v`]

"move vertically by visual line
nnoremap j gj
nnoremap k gk

"indenting a file
nnoremap <leader>ind :normal gg=G<cr>

"surround with "
nnoremap <leader>" <esc>viw<esc>a"<esc>bi"<esc>lell
"surround with '
nnoremap <leader>( <esc>viw<esc>a(<esc>bi(<esc>lell
"surround with (
nnoremap <leader>( <esc>viw<esc>a(<esc>bi(<esc>lell
"surround with [
nnoremap <leader>( <esc>viw<esc>a(<esc>bi(<esc>lell
"surround with {
nnoremap <leader>( <esc>viw<esc>a(<esc>bi(<esc>lell

"clear highlighting
nnoremap <leader>ch :set hlsearch!<cr>
"clear errors
nnoremap <leader>ce :match none<cr>

"open quickfix window
nnoremap <leader>qf :copen<cr>

"go to next match
nnoremap <leader>n :cnext<cr>
"go to last match
nnoremap <leader>p :cprevious<cr>


"TaskList
"map T :TaskList<CR>
"map P :TlistToggle<CR>

"}}}

" Errors {{{

"match trailing whitespace
nnoremap <leader>ew :match Error /\v.+ $/<cr>

"}}}

" Python {{{

"Functions {{{
    function! ToggleFoldsPython() 
        if &foldmethod ==? "marker"
            set foldmethod=indent
        else
            set foldmethod=marker
        endif
    endfunction
"}}}

augroup python
    autocmd!

    "folding
    autocmd FileType python set foldmethod=indent
    autocmd FileType python set foldminlines=3
    autocmd FileType python nnoremap <leader>ni :call ToggleFoldsPython()<cr>
    "comment line
    autocmd FileType python nnoremap <leader>c I#<esc>

    "if main
    autocmd FileType python iabbrev ifmain if __name__ == "__main__":<cr>main()<esc>
    "init
    autocmd FileType python iabbrev init def __init__(self):
augroup end
"}}}

" Vimscript {{{
augroup vimscript
    autocmd!
    autocmd FileType vim :set foldmethod=marker
augroup end
"}}}

" Textfiles {{{
augroup textfiles
    autocmd!
    "folding
    autocmd FileType text set foldmethod=marker
augroup end
"}}}

" Abbreviations {{{

iabbrev adn and

"}}}

