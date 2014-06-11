call pathogen#incubate()
call pathogen#helptags()

" General settings
syntax on
set number
set autoindent
set smartindent
set cursorline
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

set hlsearch
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

nmap <leader>ul VYpVr=

" Filetype specific commands
autocmd FileType ruby nmap <leader>p :w<cr>:!ruby %<cr>
autocmd FileType javascript nmap <leader>p :!node %<cr>
autocmd FileType scala nmap <leader>p :!scala -i %<cr>
autocmd FileType markdown nmap <leader>p :!~/.vim/scripts/preview_markdown.sh %<cr>
autocmd FileType markdown nmap <leader>C :!~/.vim/scripts/convert_markdown.sh %<cr>
autocmd FileType java nmap <leader>r :!android-run<cr>
autocmd FileType java nmap <leader>l :!logcat<cr>

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType html let g:ycm_cache_omnifunc = 0

au! FileType scss syntax cluster sassCssAttributes add=@cssColors

" XML folding
 let g:xml_syntax_folding=1
 au FileType xml setlocal foldmethod=syntax

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YCM/cpp/ycm/.ycm_extra_conf.py'

" insert empty line/line break
nmap <leader><cr> i<cr><esc>k 
nmap <leader><leader><cr> o<esc>

" Visual mode mappings

" search for selection in whole file with <leader/
vmap <leader>/ yq/p<cr>

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

" Eclim settings (in case i want to use it)
 let g:EclimCompletionMethod = 'omnifunc'

" Airline settings
set laststatus=2
let g:airline_theme             = 'solarized'
let g:airline_section_b		= '%t'
let g:airline_section_c 	= '%{airline#extensions#tagbar#currenttag()}'
let g:airline_section_y 	= '%{&ft}'
let g:airline_section_x 	= '%{strftime("%c")}'
let g:airline_powerline_fonts = 1
set guifont=Sauce\ Code\ Powerline\ Light:h11
set lazyredraw

" snipmate settings - Use CTRL+E for expansion of snippets
imap <C-E> <Plug>snipMateNextOrTrigger
autocmd FileType html imap <C-J> <Plug>snipMateNextOrTrigger

" custom commands
function! FindInProject(query, path)
	let q = a:query
	let p = a:path
	execute 'silent grep ' . q . ' ' . p 
	copen
endfunction

:command! -nargs=* -complete=file Search call FindInProject(<f-args>)
