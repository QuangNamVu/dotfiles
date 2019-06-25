let filename=expand('%:r')
let mapleader="\<Space>"
set number
set relativenumber
noremap  <Leader>fs :w<CR>
noremap  <Leader>ff :edit  

noremap <c-l> gg=G `.
inoremap <c-l> <Esc> gg=G `^ <CR>

noremap  <Leader>w2 :vsplit % <CR>

noremap  <Leader><Leader> :
noremap  ; :

noremap <Leader>wh :wincmd h<CR>
noremap <Leader>wj :wincmd j<CR>
noremap <Leader>wk :wincmd k<CR>
noremap <Leader>wl :wincmd l<CR>

vmap <Leader>y "+y
vmap <Leader>c "+y

" Enable Ctrl+c and Ctrl+v for copy and paste
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

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


" Autocomplete
"
filetype plugin on  
set omnifunc=syntaxcomplete#Complete


" Commenting blocks of code.
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '

xnoremap # :norm 0i<C-r>=b:comment_leader<CR><CR>
xnoremap & :norm ^<C-r>=len(b:comment_leader)<CR>x<CR>
" xnoremap <C-/> :norm 0i<C-r>=b:comment_leader<CR><CR>
xnoremap <C-?> :norm ^<C-r>=len(b:comment_leader)<CR>x<CR>
