" Plugins
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/w0rp/ale'
Plug 'https://github.com/jnurmine/Zenburn.git'
Plug 'https://github.com/itchyny/lightline.vim'
call plug#end()

" Colors
syntax enable  	    " Enables syntax highlighting
set t_Co=256
colors zenburn

" Alignment
set tabstop=4       " Number of visual spaces per tab

set softtabstop=4   " Number of spaces in tab when editing

set expandtab 	    " Make tabs spaces

" UI
set mouse=a
set number relativenumber 	        " Show line numbers

" Displays absolute line numbers when in insert mode
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set laststatus=2
" Configure status line
let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

filetype indent on  " Load filetype-specific indent files

set wildmenu        " Visual autocomplete for commands

set showmatch       " Highlight matching parens and brackets

" Searching 
set incsearch       " Search as characters are entered

set hlsearch        " Highlight matches


" Enables persistent undo which is amazing
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature  
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
  set undolevels=1000 " Maximum number of changes that cna be undone
  set undoreload=10000 " maximum number of lines to save when relaoding a buffer
  endif      

