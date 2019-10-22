syntax on
"set smartindent
set autoindent
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set cursorline
set number
set nocompatible
set whichwrap=b,s,<,>,[,]
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END
"set nobackup
"set nowritebackup
"set noswapfile
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>
imap <C-d> <BS>
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap {} {}<Left>
inoremap () ()<Left>
inoremap [] []<Left>
"inoremap < <><Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o><Tab>
inoremap [<Enter> []<Left><CR><ESC><S-o><Tab>
inoremap (<Enter> ()<Left><CR><ESC><S-o><Tab>
inoremap [; [];<Left><Left>
inoremap (; ();<Left><Left>
inoremap {<Right> {
inoremap (<Right> (
inoremap [<Right> [

if !has('gui_running')
    imap  <C-CR>
    inoremap <C-CR> <End><CR>
endif

autocmd BufNewFile *.cpp 0r $HOME/.vim/cpp.txt
