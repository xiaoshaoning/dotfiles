set nu
syntax enable         "enable syntax processing
set tabstop=4         "number of visual spaces per TAB
set softtabstop=4     "number of spaces in tab when editing
set expandtab         "tabs are spaces
set showcmd           "show command in bottorm bar
set cursorline        "highlight current line
set cursorcolumn
filetype indent on
set wildmenu
set lazyredraw
set showmatch         "highlight matching
set incsearch
set hlsearch
set ignorecase        "ignore case in search
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
Plugin 'Shougo/vimproc.vim'
Plugin 'idanarye/vim-vebugger'
Plugin 'pthrasher/conqueterm-vim'
Plugin 'nablaa/vim-rainbow-parenthesis'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'peaksea'
Plugin 'lazywei/vim-matlab'
Plugin 'fortes/vim-escuro'
Plugin 'jacoborus/tender.vim'
Plugin 'connorholyday/vim-snazzy'
Plugin 'haishanh/night-owl.vim'
Plugin 'wesgibbs/vim-irblack'
Plugin 'neutaaaaan/iosvkem'
Plugin 'ErichDonGubler/vim-sublime-monokai'
Plugin 'Jimeno0/vim-chito'
Plugin 'leafgarland/typescript-vim'
call vundle#end()

"Airline Theme
set laststatus=2
let g:airline_theme='bubblegum'
"color Iosvkem
color sublimemonokai
set smartindent

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
" Remember info about open buffers on close
set viminfo^=%
set shortmess=atI
set selection=inclusive
set selectmode=mouse,key
set title
set completeopt=longest,menu
set wildignore=**.o,*~,.swp,*.bak,*pyc,*.class
set nobackup
set noundofile
set noswapfile
set autoread
set confirm
"ConqueGDB
let g:ConqueGdb_SrcSplit='above'
let g:ConqueGdb_SaveHistory=1
let g:ConqueGdb_Leader=','          ",r run  ,c  continue ,n next ,s step ,b breakpoint ,d delete ,f finish ,t backtrace
let g:ConqueTerm_CloseOnEnd=1
