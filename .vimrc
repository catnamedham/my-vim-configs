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
    Plug 'justinmk/vim-sneak'
    Plug 'tpope/vim-repeat'
    Plug 'machakann/vim-highlightedyank'
    Plug 'svermeulen/vim-yoink'
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


" sneak stuff
let g:sneak#label = 1


" highlightedyank
let g:highlightedyank_highlight_duration = 150
let g:highlightedyank_highlight_in_visual = 0

" vim-yoink
nmap <c-n> <plug>(YoinkPostPasteSwapBack)
nmap <c-p> <plug>(YoinkPostPasteSwapForward)

nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)

" Also replace the default gp with yoink paste so we can toggle paste in this case too
nmap gp <plug>(YoinkPaste_gp)
nmap gP <plug>(YoinkPaste_gP)

" associate *.l files with Lisp
au BufNew,BufNewFile,BufRead *.l setlocal filetype=lisp

" Lisp rainbow parentheses
let g:lisp_rainbow = 1

set number
set relativenumber
set clipboard=unnamedplus
set ignorecase
set smartcase
set incsearch
set autoindent

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" imap jk <Esc>

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=


set tabstop=4
set shiftwidth=4
set expandtab
