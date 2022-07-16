syntax on
syntax enable
filetype on
"set background=dark
set showmatch
set ignorecase
set incsearch
set nopaste
"set paste
set number
set undolevels=1000
set undoreload=10000
set laststatus=2
set nocompatible
set cursorline
set linebreak
set confirm
set hlsearch
set tabstop=2
set shiftwidth=4
set expandtab
set clipboard+=unnamedplus

" Customizing key button
imap jj <esc>
" Move Visual Selection
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" Make Space your leader key
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
" Clear highlighted search
nmap<silent> ,/ :nohlsearch<CR>

"colorscheme oceanlight
"colorscheme buttercream
"colorscheme solarized 
"colorscheme pyte
"colorscheme delek
colorscheme desert

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Returns true if paste mode is enabled
   function! HasPaste()
    if &paste
     return 'PASTE MODE  '
    en  
    return ''
   endfunction

" Have VIM jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Enable relative numbers only in Normal mode, and absolute numbers only in Insert mode
augroup toggle_relative_number
autocmd InsertEnter * :setlocal norelativenumber
autocmd InsertLeave * :setlocal relativenumber

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
