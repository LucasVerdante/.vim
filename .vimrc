""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-pathogen - https://github.com/tpope/vim-pathogen
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" general
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin on
filetype indent on

set autoread

set encoding=utf8
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile
set history=1000

" persistent undo...don't forget to create the folder
set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000

" disables creation of ~/.viminfo folder
" setting this to "NONE" will also disable returning to your last position in a file
"set viminfo="NONE"

" Return to last edit position when opening files
if has("autocmd")
	autocmd BufReadPost *
	\	if line("'\"") > 0 && line("'\"") <= line("$") |
	\		exe "normal! g`\"" |
	\	endif
endif

" delete trailing white space on write
autocmd BufWritePre * :%s/\s\+$//e


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set background=dark

let g:solarized_termcolors=256
colorscheme solarized

" vertical scroll cursor margin
set so=15

set ruler
set number

set cmdheight=1

" hide buffer when abandoned
set hid

set lazyredraw

" highlight matching brackets on cursor hover
set showmatch
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" short "hit enter to continue" prompts
set shortmess=aOstT

"highlight current line
if v:version > 700
	set cursorline
"	hi Cursorline ctermbg=black guibg=#771c1c
	hi Cursorline ctermbg=black guibg=#333333
endif

set mouse=a

" status line
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	en
	return ''
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" editing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" normalize backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set noexpandtab
set smarttab
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

" auto indent
set ai
" smart indent
set si
set autoindent

set nowrap

set iskeyword-=$

set list
set listchars=tab:\·\ ,trail:.

" search settings
set ignorecase
set smartcase
set hlsearch
set incsearch

set magic


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" key mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree - https://github.com/scrooloose/nerdtree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1

" open NERDTree on launch
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
autocmd vimenter * if !argc() | NERDTree | endif

map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>
