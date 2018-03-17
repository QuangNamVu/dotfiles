let filename=expand('%:r')
let mapleader="\<Space>"
"set number
"set relativenumber
noremap  <Leader>fs :w<CR>
noremap  <Leader>ff :open 
nnoremap <c-l> gg=G `. 
inoremap <c-l> <Esc> gg=G `^ <CR>

map <f5> :make %:r
noremap  <Leader>cm :make %:r <CR>
noremap  <Leader><Leader> :
noremap  ; :
"/usr/share/vim/vim80/colors
colorscheme default
syntax on
