set nu
syntax enable         "enable syntax processing
set tabstop=4         "number of visual spaces per TAB
set softtabstop=4     "number of spaces in tab when editing
set expandtab         "tabs are spaces
set showcmd           "show command in bottorm bar
set cursorline        "highlight current line
filetype indent on
set wildmenu
set lazyredraw
set showmatch         "highlight matching
set incsearch
set hlsearch
set guifont=Monospace\ 14
nnoremap <lead><space> :nolhsearch<CR>
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent
let mapleader=","     "leader is comma
set pastetoggle=<F11> "use <F11> to toggle between paste and nopaste
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'Townk/vim-autoclose'
Plugin 'vim-scripts/Conque-GDB'
Plugin 'Tagbar'
Plugin 'Tabular'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'trusktr/seti.vim'
Plugin 'jisaacks/GitGutter'
Plugin 'ntpeters/vim-better-whitespace'
call vundle#end()

"Airline Theme
set laststatus=2
let g:airline_theme='bubblegum'
color seti
set smartindent

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
" Remember info about open buffers on close
set viminfo^=% 
