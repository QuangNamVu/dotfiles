let filename=expand('%:r')
let mapleader="\<Space>"
nnoremap K i<CR><Esc>
nnoremap <c-l> gg=G `. 
inoremap <c-l> <Esc> gg=G `^ <CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <Leader>q q 
"record key leader q disable record q
nnoremap q :w <CR>
inoremap <B-q> <Esc>:w <CR>
nnoremap <Leader>\| :TableModeToggle<CR>
map  <Leader>l <c-w>l
map  <Leader>h <c-w>h
vnoremap < <gv " move block
vnoremap > >gv " move block

noremap  <Leader>o :tabnew<CR>
noremap  <Leader>x :tabclose<CR>
noremap  <Leader>v :call ToggleMouse()<CR>
noremap  <Leader>qq :wq<CR>
noremap  <Leader>qQ :wq!<CR>
noremap  <Leader>fs :w<CR>
noremap  <Leader>E :wqa!<CR>
noremap  <Leader>y "+y
noremap  <C-c> "+y
map <Leader> <Plug>(easymotion-prefix)
"set number 
"set relativenumber 
set nocompatible
set encoding=utf-8
set mouse+=a
set nobackup
set nowritebackup
set noswapfile

" +--------+
" | PLUGIN |
" +--------+
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Plugin 'Valloric/YouCompleteMe' 	"auto complete
Plugin 'python-mode/python-mode' 	" python
"Plugin 'derekwyatt/vim-scala' 		" scala
"Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-pathogen'
Plugin 'tpope/vim-surround'		" 'Hello world!' cs'<q> <q>Hello world!</q> vS add 
Plugin 'VundleVim/Vundle.vim'		"set Plugin
Plugin 'Lokaltog/powerline' 		" power line mode
Plugin 'jiangmiao/auto-pairs'           "auto closing pair brak
Plugin 'SirVer/ultisnips' 		"snippets
Plugin 'honza/vim-snippets'
"Plugin 'jrozner/vim-antlr'              "antlr
Plugin 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plugin 'easymotion/vim-easymotion' 	"easy motion Leader Leader j or k
Plugin 'scrooloose/nerdcommenter' 	"commnent Leader cc cu ma md
Plugin 'artur-shaik/vim-javacomplete2'  "java complete
Plugin 'dhruvasagar/vim-table-mode', {'on': 'TableModeToggle'} "|| && Leader |
Plugin 'dim13/smyck.vim' 	 	" color
Plugin 'nightsense/willy' 	 	" color for terminal
Plugin 'altercation/vim-colors-solarized'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'majutsushi/tagbar'
"Plugin 'lervag/vimtex'
call vundle#end()            

filetype plugin indent on    
call pathogen#infect()
call pathogen#helptags()

syntax enable
colors smyck
" +--------------+
" | TOGGLE MOUSE |
" +--------------+
function! ToggleMouse()
	if &mouse == 'a'
		set mouse=
	else
		set mouse=a
	endif
endfunc

filetype off

" +------------+
" | POWER LINE |
" +------------+
set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim/   
set laststatus=2                                                            
set t_Co=256
" +-------+
" | TABLE |
" +-------+
let g:table_mode_corner='|'
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='-'

" +---------------+
" | AUTO COMPLETE |
" +---------------+
autocmd FileType java setlocal omnifunc=javacomplete#Complete
"
" " +------------+
" " | SUPPER TAB |
" " +------------+
au FileType java setlocal omnifunc=javacomplete#Complete
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'
let g:SuperTabDefaultCompletionType = '<c-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" " +---------+
" " | LATEX   |
" " +---------+
let g:livepreview_previewer = 'evince'
"let g:livepreview_engine = 'pdflatex' . ' [options]'
" " +---------+
" " | COMMENT |
" " +---------+
" let g:NERDSpaceDelims = 1
" let g:NERDCompactSexyComs = 1
" let g:NERDDefaultAlign = 'left'
" let g:NERDAltDelims_java = 1
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" let g:NERDCommentEmptyLines = 1
" let g:NERDTrimTrailingWhitespace = 1
"
" +--------+
" | buffer |
" +--------+
au BufNewFile,BufRead *.py,*.c,*.cpp,*.scala,*.java,*.java
			\ set tabstop=4 |
			\ set softtabstop=4 |
			\ set shiftwidth=4 |
			\ set textwidth=79 |
			\ set expandtab |
			\ set autoindent |
			\ set fileformat=unix
au BufNewFile,BufRead *.js, *.html, *.css
			\ set tabstop=2 |
			\ set softtabstop=2 |
			\ set shiftwidth=2

" +---------+
" | PYTHON  |
" +---------+
"Check code on every save (if file has been modified)  *'g:pymode_lint_on_write'*
"let g:pymode_lint_on_write = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_indent = 1
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6
let g:pymode_warnings = 1
let g:pymode_folding = 0
autocmd BufEnter {window_name_list} :wincmd L
autocmd BufEnter __run__,__doc__ :wincmd L



au Filetype python  nnoremap <F5> :w <CR> :!clear && python  % <CR>
au Filetype python  inoremap <F5> <Esc>:w <CR> :!clear && python  % <CR>

au Filetype c,cpp  nnoremap <F5>  :w <CR> :call CompileCpp() <CR>
au Filetype c,cpp  inoremap <F5>  <Esc>:w <CR> :call CompileCpp() <CR>
au Filetype c,cpp  nnoremap <F10>  :w <CR> :!clear && g++  % -o %:r && ./%:r <CR>
au Filetype c,cpp  inoremap <F10>  <Esc>:w <CR> :!clear && g++  % -o %:r && ./%:r <CR>
au Filetype java  nnoremap <F5>  :w <CR>:call CompileJava() <CR>
" command! -complete=shellcmd  B call s:ExecuteInShell("clear && g++  % -o %:r && %:p:r")
nnoremap <F4> :call s:ExecuteInShell("clear && g++  % -o %:r && %:p:r")<CR>
au Filetype java  inoremap <F5>  <Esc>:w <CR>:call CompileJava() <CR>
au Filetype java  nnoremap <F10>  :w <CR> :!clear && javac %  && java  %:r <CR>
au Filetype java  inoremap <F10> <Esc> :w <CR> :!clear && javac %  && java  %:r <CR>
au Filetype txt  nnoremap <F5> :e! <CR>
au Filetype txt  inoremap <F5> <Esc> :e! <CR>
au Filetype scala  nnoremap <F5>  :!clear && scalac %  && scala  %:r <CR>
au Filetype sh  nnoremap <F5>  :!clear && bash %  <CR>

function! CompileCpp()
	if !empty(glob("input"))
		:!clear && g++  % -o %:r && ./%:r<input 
	else
		:!clear && g++  % -o %:r && ./%:r
	endif
endfunction
function! CompileJava()
	if !empty(glob("input"))
		:!clear && javac %  && java  %:r < input
	else
		:!clear && javac %  && java  %:r 
	endif
endfunction

" +-------------+
" | EASY MOTION |
" +-------------+
nmap <leader>g :YcmCompleter GoTo<CR>
nmap <leader>d :YcmCompleter GoToDefinition<CR>
"map  <Leader>f <Plug>(easymotion-bd-f)
"nmap <Leader>f <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
"map  <Leader>f <Plug>(easymotion-bd-w)
"nmap <Leader>f <Plug>(easymotion-overwin-w)

" +-------------+
" | TAG BAR     |
" +-------------+
nmap <F8> :TagbarToggle<CR>
" +-------------+
" |  READ FILE  |
" +-------------+
" Read-only .doc through antiword
autocmd BufReadPre *.doc silent set ro
autocmd BufReadPost *.doc silent %!antiword "%"

" Read-only odt/odp through odt2txt
autocmd BufReadPre *.odt,*.odp silent set ro
autocmd BufReadPost *.odt,*.odp silent %!odt2txt "%"

" Read-only pdf through pdftotext
autocmd BufReadPre *.pdf silent set ro
autocmd BufReadPost *.pdf silent %!pdftotext -nopgbrk -layout -q -eol unix "%" - | fmt -w78
