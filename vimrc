set incsearch " Noe med case sensitive search a gjore
set ignorecase " Ignore case sensitive search

" the basics
set nocompatible  " Bruker vim, og ikke vi
syntax on  " Syntax highlight
filetype on " Enables filetype detection
filetype indent on " Enable filetype-specific indenting
filetype plugin on " Enable filetype-specific plugins

set number
set tabstop=4
set expandtab
set shiftwidth=4

" NerdTree Settings
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Show hidden files
" let NERDTreeShowHidden=1

" Airline plugin set theme
" let g:airline_theme=

" Sletter unodvendige mellomrom nar en fil blir lagret
autocmd BufWritePre * :%s/\s\+$//e

" highlight search results (after pressing Enter)
set hlsearch

" change line number color to gray
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight VertSplit cterm=NONE

" Disable arrow keys for learning
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
set mouse=a
set timeoutlen=1000 ttimeoutlen=0
