""""""""""""""""""""""""""""""""""""""""""""
"  Created by Darth Joker
"     E-mail    : darth30joker@gmail.com
"  CreatedTime  : 2009-02-06 14:03
"  LastModified : 2022-10-29 23:22
"  Version      : 3.1
""""""""""""""""""""""""""""""""""""""""""""
" turn off compatible
set nocompatible

" history
set history=400

" turn on plugin and indent
filetype plugin on
filetype indent on

" auto read file when changed
set autoread

" active mouse
set mouse=a

" enable syntax support
syntax enable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

if has("gui_running")
    if has("mac") || has("gui_macvim")
        Plug 'Yggdroot/indentLine'
    endif
endif

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => fonts and colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    set background=dark
    " colorscheme merbivore
    " colorscheme desert
    colorscheme onedark

    if has("mac") || has("gui_macvim")
        set lazyredraw
        set guifont=Cascadia\ Code:h15
    else
        "set guifont=dejaVu\ Sans\ MONO\ 11
        set guifont=Ubuntu\ Mono\ 12
    endif

    if has("win32")
        set guifont=Cascadia\ Code:h16
    endif
else
    colorscheme onedark
endif

" highlight current line
set cursorline
hi cursorline guibg=#222222
hi CursorColumn guibg=#333333

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => files and backup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" turn off backup and swap
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" turn on folding
set nofen
set fdl=0
set fdm=indent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => word processing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use spaces for tab
au filetype python set expandtab

" all tab are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab

" don't break line
set lbr
set list
set lcs=tab:>.,eol:¬,nbsp:%,trail:.

"function of show infomation of current file
function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => indent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto indent
set ai

" wrap
set wrap

" show ruler
set ruler

" set command line height to 1
set cmdheight=1

" show line number
set nu

" do not redraw, when running macros.. lazyredraw
set lz

" set backspace
set backspace=eol,start,indent

" backspace and cursor keys wrap to
set whichwrap+=<,>,h,l,b,s,[,]

" set magic on
set magic

" turn off bells
set noerrorbells
set novisualbell

" pair matching
set showmatch
set matchpairs=(:),{:},[:],<:>

" How many tenths of a second to blink
set mat=2

" highlight research
set hlsearch

" set scroll
set sj=1 so=3

" when split, use same height and width
set equalalways

"encoding
set encoding=utf-8
"file encoding
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tab Line
""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showtabline=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set leader key to ','
let mapleader = ","
let g:mapleader = ","

" set shortcuts for save and quit
nmap <leader>s :w!<cr>
nmap <leader>w :wq!<cr>
nmap <leader>q :q!<cr>

" NerdTree
nmap <leader>t :NERDTreeToggle<CR>
nmap <leader>g :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags
""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_ctags_bin = '/opt/homebrew/bin/ctags'
