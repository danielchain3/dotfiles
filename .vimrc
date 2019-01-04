filetype plugin indent on

set autoindent
set cindent
set encoding=utf-8
set expandtab
set fillchars+=stl:\ ,stlnc:\
set guifont=Inconsolata\ for\ Powerline:h15
set laststatus=2
set nocompatible              " be iMproved, required
set regexpengine=1
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim
set shiftwidth=4
set t_Co=256
set tabstop=4
set term=xterm-256color
set termencoding=utf-8
set ttyfast ttymouse=xterm2 lazyredraw ttyscroll=3

augroup vimrc_autocmds  " to enable a marker to indicate that the line is too long
  autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
  autocmd BufEnter * match OverLength /\%81v.*/
augroup END


let g:Powerline_symbols = 'fancy'
let g:haskell_backpack = 1				        " to enable highlighting of backpack keywords
let g:haskell_classic_highlighting = 1          " to enable different style of highlighting	
let g:haskell_enable_arrowsyntax = 1            " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1       " to enable highlighting of `pattern`
let g:haskell_enable_quantification = 1         " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1            " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_static_pointers = 1        " to enable highlighting of `static`
let g:haskell_enable_typeroles = 1              " to enable highlighting of type roles
let g:indentLine_leadingSpaceChar = '·'         " to change leading space characters
let g:indentLine_leadingSpaceEnabled = 1        " to enable leading spaces
let g:jsx_pragma_required = 1
let g:jsx_ext_required = 0


map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

syntax on					"turns syntax highlighting on
autocmd BufRead scp://* :set bt=BufWritePost
"au BufNewFile,BufRead *.html set filetype=htmldjango 	"reads html files as django html

if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
       set guifont=Inconsolata\ for\ Powerline:h15
   endif
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	" alternatively, pass a path where Vundle should install plugins
	"call vundle#begin('~/some/path/here')

	Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
	
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'https://github.com/Valloric/YouCompleteMe.git'
	Plugin 'https://github.com/vim-scripts/scrollfix.git'
	Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
	Plugin 'tpope/vim-fugitive'
	Plugin 'vimwiki/vimwiki'
    Plugin 'git://git.wincent.com/command-t.git'
    Plugin 'https://github.com/Yggdroot/indentLine.git'
    Plugin 'https://github.com/neovimhaskell/haskell-vim.git' 
    Plugin 'mattn/emmet-vim'
    Plugin 'mxw/vim-jsx'
    Plugin 'pangloss/vim-javascript'
	call vundle#end()            " required
