let filename=expand('%:r')
let mapleader="\<Space>"
"set number
"set relativenumber
noremap  <Leader>fs :w<CR>
noremap  <Leader>ff :open 
noremap <c-l> gg=G `. 
inoremap <c-l> <Esc> gg=G `^ <CR>

map <f5> :make %:r
noremap  <Leader>cm :make %:r <CR>

noremap  <Leader><Leader> :
noremap  ; :

noremap <Leader>wh :wincmd h<CR>
noremap <Leader>wj :wincmd j<CR>
noremap <Leader>wk :wincmd k<CR>
noremap <Leader>wl :wincmd l<CR>
noremap <Leader>y "+y
"/usr/share/vim/vim80/colors
colorscheme default
syntax on
