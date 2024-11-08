
 set mouse-=a
set nocompatible

set backspace=indent,eol,start

set paste

set laststatus=2

set statusline=%F%r\ [HEX=%B][%l,%v,%P]\ %{strftime(\"%H:%M\")}

set showcmd

set wildmenu

set number

set showmatch

set hlsearch

set incsearch

set noeb

set ttimeout
set ttimeoutlen=100

set cursorline
set cursorlineopt=number

syntax enable

filetype plugin indent on


set shiftwidth=4

set expandtab

set softtabstop=-1

colorscheme slate

highlight MyTabSpace ctermfg=darkgrey

match MyTabSpace /\t\| /

autocmd FileType c,cpp,java,xml setlocal list | set listchars=tab:>~,trail:.

set cscopetag
let GtagsCscope_Auto_Load = 1
let g:GtagsCscope_Quiet = 1
let g:Gtags_Close_When_Single = 1

set pastetoggle=<F2>
nnoremap <F3> :cn<CR>
nnoremap <F4> :cp<CR>

nnoremap <F6> :cs find f<Space>

nnoremap <F9> :nohlsearch<CR>
inoremap <F9> <C-o>:nohlsearch<CR>

let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=31

map <F7> :NERDTreeMirror<CR>
map <F7> :NERDTreeToggle<CR>
nnoremap <C-p> :NERDTreeToggle<CR>


let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
let g:NERDTreeHidden=0     "不显示隐藏文件
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1




" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:

" Required:

" Note: You don't set neobundle setting in .gvimrc!


" Required:
filetype plugin indent on




map <Leader>n <plug>NERDTreeTabsToggle<CR>


let g:nerdtree_tabs_open_on_console_startup=1







