call pathogen#incubate()
call pathogen#helptags()

" General settings
syntax on
set number
set autoindent
set smartindent
color smyck

" Map the leader key
let mapleader = ","
let g:mapleader = ","

" normal mode mappings
nmap t :NERDTreeToggle<cr>B
nmap T :TagbarToggle<cr>B
nmap + <c-W>+
nmap - <c-W>-
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap <leader>Q :q!<cr>
nmap <leader>l :set list!<cr>
nmap <leader><esc> :wq!<cr>
nmap <leader>+ za
nmap <leader>- zc
nmap <leader>/ zM
nmap <leader>* zR

nmap <leader>ul VYpVr=

" Filetype specific commands
autocmd FileType ruby nmap <leader>p :w<cr>:!ruby %<cr>
autocmd FileType javascript nmap <leader>p :!node %<cr>
autocmd FileType markdown nmap <leader>p :!~/.vim/scripts/preview_markdown.sh %<cr>
autocmd FileType markdown nmap <leader>C :!~/.vim/scripts/convert_markdown.sh %<cr>
autocmd FileType java nmap <leader>r :!android-run<cr>
autocmd FileType java nmap <leader>l :!logcat<cr>

" XML folding
 let g:xml_syntax_folding=1
 au FileType xml setlocal foldmethod=syntax

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YCM/cpp/ycm/.ycm_extra_conf.py'

" insert empty line/line break
nmap <leader><cr> i<cr><esc>k 
nmap <leader><leader><cr> o<esc>

if version >= 700
  au InsertEnter * hi StatusLine term=reverse ctermbg=red gui=undercurl guisp=Magenta
  au InsertLeave * hi StatusLine term=reverse ctermfg=white ctermbg=gray  gui=bold,reverse
endif

autocmd FileType text set tw=80

let NERDTreeChDirMode=2

" Directories for swp files
set backupdir=~/.vimbackup
set directory=~/.vimbackup

set foldmethod=syntax
set foldlevel=10

filetype plugin indent on
