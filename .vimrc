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
noremap  <Leader>mcc :!python % <CR>
noremap  <Leader>w2 :vsplit % <CR>

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

" using Source Code Pro
set anti enc=utf-8
set guifont=Source\ Code\ Pro\ 11
" set guifont=Source\ Code\ Pro\ Bold\ 11


let i = 1
while i <= 9
    execute 'nnoremap <Leader>' . i . ' :' . i . 'wincmd w<CR>'
    let i = i + 1
endwhile

" enable mouse
set mouse=a
