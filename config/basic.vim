" Set comma as map leader key
let mapleader = ","

" Enable mouse on visual mode
set mouse=v

" Configure backspace so it acts as it should act
set nocompatible
set backspace=eol,start,indent

" Turn backup off
set nobackup
set nowritebackup
set noswapfile

" Enable switch buffer while current buffer not saved yet
set hidden

" Syntax highlight, cursor positon, so(scrolloff) lines
syntax enable
set ruler
set so=2

" Goto last edit position when opening files, auto read file when change outside
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
au FocusGained,BufEnter * :silent! checktime
au FocusLost,WinLeave * :silent! w

" Command lines, wildmenu option enhance auto complete
set history=500
set wildmenu
set showcmd

" Ignore files
set wildignore=*.o,*~,*.pyc,*.out
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

" Search, magic option enable regular expression
set magic
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <Leader><cr> :noh<cr>

" Donot redraw while executing macros for better performance
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch
set matchtime=2

" Theme, line number
set t_Co=256
try
    colorscheme desert
    set cursorline
catch
endtry
set background=dark
set number
highlight LineNr ctermfg=darkblue

" Add a bit extra margin to the left, Useful when has fold
"set foldcolumn=2

" Encoding, ffx(fileformats), auto detect by order
set encoding=utf8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set ffs=unix,dos,mac

" Filetype config, plugin and indent
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on
set autoindent
set smartindent

" Tab space
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4

"au FileType c,h,cpp,c++ setlocal noexpandtab
au FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
au FileType html,xhtml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0 wrap
au FileType make setlocal noexpandtab
au FileType sh setlocal textwidth=0 wrap

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Write save quit
:command! W w
:command! WQ wq
:command! Q q
:command! QA qa
:command! WQA wqa

" Avoid CTRL-M(== Enter), :help key-notation
nnoremap <C-N> :bn<cr>

" Paste multiple times
xnoremap p pgvy

" Insert mode keymap
inoremap <c-a> <home>
inoremap <c-e> <end>

" Terminal in split window, ctrl+d can exit terminal
" ctrl+w,N into normal mode in term, i into insert mode
set splitright
map <Leader>t :vert term<cr>

" stop vim from adding a newline at end of file
set nofixendofline
