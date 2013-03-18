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

""""""""""""""""""""""""""
" My Bundles here:
" original repos on github
""""""""""""""""""""""""""

" Color scheme and settings {
Bundle 'altercation/vim-colors-solarized'

    syntax enable
    set background=dark
    let g:solarized_termcolors=256
    colorscheme solarized
    let g:solarized_termtrans=1
    let g:solarized_contrast="high"
    let g:solarized_visibility="high"
    let g:solarized_degrade = 0

" }

" Formatting {

    set nowrap         " Wrap long lines
    set autoindent     " Indent at the same level of the previous line
    set shiftwidth=4   " Use indents of 4 spaces
    set expandtab      " Tabs are spaces, not tabs
    set tabstop=4      " An indentation every four columns
    set softtabstop=4  " Let backspace delete indent
    
   " Remove trailing whitespaces and ^M chars
    autocmd FileType c,cpp,java,php,javascript,python,twig,xml,yml autocmd BufWritePre <buffer> call StripTrailingWhitespace()
    autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig

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
