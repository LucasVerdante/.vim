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
" setting this to 'NONE' will also disable returning to your last position in a file
"set viminfo="NONE"

" return to last edit position when opening files
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

"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"colorscheme solarized

colorscheme jellybeans

" vertical scroll cursor margin
set so=9

set ruler
set number

set cmdheight=1

" hide buffer when abandoned
set hid

set lazyredraw

" highlight matching brackets on cursor hover
set showmatch
set mat=2

" disable error sounds
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" short 'hit enter to continue' prompts
set shortmess=aOstT

" highlight current line
if v:version > 700
	set cursorline
"	hi Cursorline ctermbg=black guibg=#771c1c
	hi Cursorline ctermbg=black guibg=#333333
endif

" set vim to not follow mouse
set mouse=a

" status line
set laststatus=2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" editing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" normalize backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Linebreak on 500 characters
set linebreak
set tw=500

set nowrap

set iskeyword-=$

set list
set listchars=tab:\·\ ,trail:.

" tab settings; note that these conflict with paste mode
set autoindent
set smartindent
set cindent
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" search settings
set ignorecase
set smartcase
set hlsearch
set incsearch

set magic

" folding
set foldenable
set foldmethod=indent
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" key mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","
let g:mapleader=","

" fast quit
nmap <leader>q :q!<cr>

" convert 2 spaces to a tab of 4 spaces
nmap <leader>st2 :set tabstop=2 <bar> set softtabstop=2 <bar> retab! <bar> set tabstop=4 <bar> set softtabstop=4 <cr>

" use leader w to cycle through windows because MacBook keyboards don't have a control key on the right
nmap <leader>w <C-w>w

set pastetoggle=<leader>p


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
