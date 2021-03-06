"""""""""""""""""""""""""
" Enviroment variable {{{
"""""""""""""""""""""""""
    set nocompatible               " be iMproved
    set hidden                     " allow file to stay opened in buffer no matter what
    if !has("gui_running")  
        set term=xterm-256color    " set terminal colors to 256
    endif
    filetype off                   " stop vim look for file types

    scriptencoding utf-8
    " store undo files, undo edits after deleting a buffer
    set undofile
    set encoding=utf-8
    set termencoding=utf-8
    
    " Directories {
    silent execute '!mkdir -p $HOME/.vim/tmp/{backup,swap,view,undo}'
    set backupdir=$HOME/.vim/tmp/backup/
    set backup
    set directory=$HOME/.vim/tmp/swap/
    set viewdir=$HOME/.vim/tmp/view/
    set undodir=$HOME/.vim/tmp/undo/
    " }    
" }}}

"""""""""""""""""""""
" Vundle settings {{{
"""""""""""""""""""""
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    " let Vundle manage Vundle
    " required! 
    Bundle 'gmarik/vundle'

" }}}


"""""""""""""""""""""
" Keyboard maping  {{{
"""""""""""""""""""""
    nmap <F2> :tabp<CR>
    nmap <F3> :tabn<CR>
    nmap <F4> :NERDTreeFocus<CR>
" }}}

""""""""""""""""""""""""""
" My Bundles here:
" original repos on github
""""""""""""""""""""""""""

" Color scheme and settings {
Bundle 'd11wtq/tomorrow-theme-vim'

    syntax enable
    colorscheme Tomorrow-Night
" }

" Syntactic checking {
Bundle 'scrooloose/syntastic'
" }

" File tree explorer {
Bundle 'scrooloose/nerdtree'
"}

" Paste with context indentation {
Bundle 'sickill/vim-pasta'
"}

" Code compleation {
Bundle 'Shougo/neocomplcache.vim'
"}

" Formatting {

    set nowrap         " Wrap long lines
    set autoindent     " Indent at the same level of the previous line
    set shiftwidth=4   " Use indents of 4 spaces
    set expandtab      " Tabs are spaces, not tabs
    set tabstop=4      " An indentation every four columns
    set softtabstop=4  " Let backspace delete indent
    
    " Fix the difficult-to-read default setting for diff text highlighting.  The
    " bang (!) is required since we are overwriting the DiffText setting. The highlighting
    " for "Todo" also looks nice (yellow) if you don't like the "MatchParen" colors.
    highlight! link DiffText MatchParen

" }

" Misc {
    set backspace=indent,eol,start " backspace for dummys¬
    set linespace=0    " No extra spaces between rows
    set nu             " Line numbers on
    set showmatch      " Show matching brackets/parenthesis
    set incsearch      " Find as you type search
    set hlsearch       " Highlight search terms
    set list           " invisible chars
    "set listchars=tab:>.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
    set listchars=tab:▸\ ,eol:¬
    set showbreak=

    set cursorline               " Highlight current line
    highlight clear SignColumn   " SignColumn should match background for
                                 " things like vim-gitgutter
" }
