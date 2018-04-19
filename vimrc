execute pathogen#infect()
syntax on
filetype plugin indent on

set relativenumber

set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

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

" ======================== vim-airline ======================= 

let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
let g:airline_section_b = airline#section#create(['branch'])
let g:airline_section_y = 'BN: %{bufnr("%")}'

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