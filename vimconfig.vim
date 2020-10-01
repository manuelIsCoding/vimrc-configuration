" Set compatibility to Vim only.
set nocompatible
set nolist
"  relative numbers
set rnu

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn on syntax highlighting.
syntax on

" For plug-ins to load correctly.
filetype plugin indent on

" Turn off modelines
set modelines=0

" Automatically wrap text that extends beyond the screen length.
set wrap

" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Status bar
set laststatus=2

" Display options
set showmode
set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Show line numbers
set number

" Highlight matching search patterns
set hlsearch

" Enable incremental search
set incsearch

" Include matching uppercase words with lowercase search term
set ignorecase

" Include only uppercase words with uppercase search term
set smartcase

" Installing plugins with Plug
call plug#begin()

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vim airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Vim colorschemes
Plug 'flazz/vim-colorschemes'
"  custom colorschemes
Plug 'eemed/sitruuna.vim'
Plug 'artanikin/vim-synthwave84'

" Match pairs
Plug 'jiangmiao/auto-pairs'

" NerdTree
Plug 'scrooloose/nerdtree'

call plug#end()

" GoTo Code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

" Setting own colorscheme
colorscheme monokai-phoenix

"  Deleting background for get transparency
hi Normal guibg=NONE ctermbg=NONE

" Shorcut for toggle nerdtree
nmap <C-n> :NERDTreeToggle<CR>

" Shorcuts for switch tabs
nnoremap <C-Left> :tabprevious<CR>                                                                            
nnoremap <C-Right> :tabnext<CR>a

