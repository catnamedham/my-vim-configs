" for automatic insallation for vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    Plug 'jiangmiao/auto-pairs'
    Plug 'psliwka/vim-smoothie'
    Plug 'zirrostig/vim-schlepp' " bubbling text
    Plug 'tpope/vim-surround'
    Plug 'tibabit/vim-templates'
call plug#end()

" vim-templates
let g:tmpl_author_email = 'hmnpark2@gmail.com'
let g:tmpl_author_name = 'Hamin Park'


" schlepp stuff
"vmap <unique> <up>    <Plug>SchleppUp
"vmap <unique> <down>  <Plug>SchleppDown
vmap <unique> <up>    <Plug>SchleppIndentUp
vmap <unique> <down>  <Plug>SchleppIndentDown
vmap <unique> <right> <Plug>SchleppRight
vmap <unique> <left>  <Plug>SchleppLeft


set number
set relativenumber
set clipboard=unnamedplus
set ignorecase
set incsearch
set autoindent


" imap jk <Esc>


set tabstop=4
set shiftwidth=4
set expandtab
