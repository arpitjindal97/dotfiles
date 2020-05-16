
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'elzr/vim-json'
Plug 'vim-airline/vim-airline', { 'tag': 'v0.10'  }
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'ntpeters/vim-better-whitespace'
Plug 'altercation/vim-colors-solarized'
Plug 'fatih/vim-go'
Plug 'godlygeek/tabular'
Plug 'mhinz/vim-signify'
Plug 'darfink/vim-plist'

call plug#end()

syntax on
filetype plugin indent on

set relativenumber

set autoindent
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab

set nostartofline
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" ======================== nerdtree ========================

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

map <C-n> :NERDTreeToggle<CR>

" Close nerdtree and vim on close file
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

let NERDTreeShowHidden=1

" ======================== vim-airline ========================

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_highlighting_cache = 1


" ==================== vim-airline-themes ======================

let g:airline_theme='powerlineish'
let g:airline_solarized_bg='dark'

" ===================== vim-colors-solorized ===================

let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" ========================== indentLine =========================

let g:indentLine_char = '│'
let g:indentLine_color_term = 239

" ========================= vim-go =============================
let g:go_version_warning = 0
