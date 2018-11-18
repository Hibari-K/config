syntax on
"set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set cursorline
set number
set nocompatible
set whichwrap=b,s,<,>,[,]
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
"inoremap < <><Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o><Tab>
inoremap [<Enter> []<Left><CR><ESC><S-o><Tab>
inoremap (<Enter> ()<Left><CR><ESC><S-o><Tab>

