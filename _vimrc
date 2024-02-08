"""""""""""""""""""""""""""""""""""""""""""""""""
"  Created by Darth Joker
"  Email        : darth30joker@gmail.com
"  CreatedTime  : 2009-02-06 14:03
"  LastModified : 2024-02-09 21:45
"  Version      : 4.6.1
"  Summary      : Supports both vim and neovim.
"""""""""""""""""""""""""""""""""""""""""""""""""
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

if has('mac') || has('linux')
	source $VIMRUNTIME/mswin.vim
	behave mswin
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

if has('nvim')
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'nvim-tree/nvim-tree.lua'
	Plug 'liuchengxu/vista.vim'
	Plug 'ojroques/nvim-hardline'
	Plug 'folke/which-key.nvim'
	Plug 'mfussenegger/nvim-lint'
	Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
	Plug 'MunifTanjim/nui.nvim'
	Plug 'folke/noice.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
else
	Plug 'preservim/nerdtree'
	Plug 'majutsushi/tagbar'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
endif

" themes
Plug 'joshdick/onedark.vim'
Plug 'folke/tokyonight.nvim'

if has("gui_running")
    if has("mac") || has("gui_macvim")
        Plug 'Yggdroot/indentLine'
    endif
endif

call plug#end()

if has('nvim')
	lua require('init')
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => fonts and colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme onedark
colorscheme tokyonight-storm

if has("gui_running")
    set background=dark

    if has("mac") || has("gui_macvim")
        set lazyredraw
        set guifont=Monaspace\ Krypton:h15
    elseif has("win32")
        " set guifont=Cascadia\ Code:h8
        set guifont=Monaspace\ Krypton:h9
    else
        set guifont=Monaspace\ Krypton:h12
    endif
endif

" highlight current line
set cursorline
" hi cursorline guibg=#222222
" hi CursorColumn guibg=#333333

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
set lcs=tab:>.,eol:¬,nbsp:%,trail:.,space:.

"function of show infomation of current file
function! CurDir()
    let curdir = substitute(getcwd(), '/Users/darthjoker/', "~/", "g")
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
" set novisualbell

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
if has('vim')
	set showtabline=1
endif

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
nmap <leader>b :buffers<cr>
nmap <leader>n :bn<cr>

" shortcuts for buffers
nmap <leader>b :buffers<cr>
nmap <leader>n :bnext<cr>
nmap <leader>p :bprevious<cr>

" shortcuts for vertical split
nmap <leader>v :vsplit<cr>

if has('nvim')
	nmap <leader>t :NvimTreeToggle<CR>

	nmap <leader>ff <cmd>Telescope find_files<cr>
	nmap <leader>fg <cmd>Telescope live_grep<cr>
	nmap <leader>fb <cmd>Telescope buffers<cr>
	nmap <leader>fh <cmd>Telescope help_tags<cr>

	let g:vista_default_executive = '/opt/homebrew/bin/ctags'
	let g:vista_icon_indent = ["|-> ", "*-> "]
	nmap <leader>g :Vista ctags<CR>
else
	" NerdTree
	nmap <leader>t :NERDTreeToggle<CR>
	" Tagbar
	nmap <leader>g :TagbarToggle<CR>
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags
""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("mac")
	let g:tagbar_ctags_bin = '/opt/homebrew/bin/ctags'
endif
if has("win32")
	let g:tagbar_ctags_bin = 'C:\ProgramData\chocolatey\lib\universal-ctags\tools\ctags.exe'
endif
