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
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap <leader>Q :q!<cr>
nmap <leader>l :set list!<cr>
nmap <leader><esc> :wq!<cr>
nmap <leader>+ za
nmap <leader>- zc
nmap <leader>/ zM
nmap <leader>* zR

" Filetype specific commands
autocmd FileType javascript nmap <leader>p :!node %<cr>
autocmd FileType markdown nmap <leader>p :!markdown % > /tmp/%.html && open /tmp/%.html<cr>

" insert empty line/line break
nmap <leader><cr> i<cr><esc>k 
nmap <leader><leader><cr> o<esc>

if version >= 700
  au InsertEnter * hi StatusLine term=reverse ctermbg=red gui=undercurl guisp=Magenta
  au InsertLeave * hi StatusLine term=reverse ctermfg=white ctermbg=gray  gui=bold,reverse
endif

set tw=80

let NERDTreeChDirMode=2
