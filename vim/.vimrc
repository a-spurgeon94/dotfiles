"                            _   _ _                    
"                           | | | (_)                   
"                           | | | |_ _ __ ___  _ __ ___ 
"                           | | | | | '_ ` _ \| '__/ __|
"                           \ \_/ / | | | | | | | | (__ 
"                            \___/|_|_| |_| |_|_|  \___|
"
"------------------------------------------------------------------------------------
"
"   No Brainers 
"

set nocompatible
filetype indent plugin on
syntax on
colorscheme desert


"------------------------------------------------------------------------------------
"
"   Down to Brass Tacks
"

let mapleader=','               " Change from default \

set autoindent                  " Consistent file indenting
set autoread                    " Reload files that have been modified
set backspace=indent,eol,start  " Normalize backspace behaviour
set encoding=UTF8
set t_Co=256                    " Makeover 


"------------------------------------------------------------------------------------
" 
"   Welcome to the Jungle
"

set hlsearch
set incsearch
set ignorecase    " Case-insensitive search
set smartcase     " Except when using capital letters
set wildmenu      " Better command-line completion


"------------------------------------------------------------------------------------
" 
"   Pimp My Ride
"

set cmdheight=2         " 2 lines for the command window 
set laststatus=2        " Always display status line
set linespace=6         " Line height
set number              " Line Numbers
set numberwidth=4
set ruler               " Show row/col & percentage
set scrolloff=999       " Distance around cursor to keep in view
set showcmd             " Show partial commands in last line
set showmatch           " Highlight matching braces/parens/etc
set list                " Show invisible characters
set listchars=tab:▸\    " Unicode characters for various things


"------------------------------------------------------------------------------------
"
"   Do You Even Indent, Bro? 
"

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set textwidth=80


"------------------------------------------------------------------------------------
" 
"   Go Go Gadget Utilities!
"

set hidden            " Allow re-use of same window w/ unsaved buffer
set mouse=a           " Enable use of the mouse in all modes
set nostartofline     " Stops some movements from going to first character of a line


"------------------------------------------------------------------------------------
" 
"   Miscellaneous
"

set confirm                             " Confirm dialogue 
set notimeout ttimeout ttimeoutlen=200  " Time out on keycodes, but not on mappings
set visualbell t_vb=                    " No flashing or beeping


"------------------------------------------------------------------------------------
"
"   Mappings
"

" Make Y yank until EOL
map Y y$

" Make it easy to edit vimrc
nmap <Leader>ev :e :tabedit $MYVIMRC<cr>

" Add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

" You shall not pass
nnoremap <Up> :echoe "Fool! Use k"<CR>
nnoremap <Left> :echoe "Fool! Use h"<CR>
nnoremap <Down> :echoe "Fool! Use j"<CR>
nnoremap <Right> :echoe "Fool! Use l"<CR>


"------------------------------------------------------------------------------------
"
"   Functions
"

" Automagically source this file on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
