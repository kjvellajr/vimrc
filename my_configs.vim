" show hidden files in nerdtree by default
let NERDTreeShowHidden=1

" show line numbers
set number

set ttyfast

" edit personal vim config in a new tab
if has("win32")
    map <leader>e :tabedit! C:\Users\E014168\workspace\github\vimrc\my_configs.vim<cr>
    autocmd! bufwritepost C:\Users\E014168\workspace\github\vimrc\my_configs.vim source C:\Users\E014168\workspace\github\vimrc\my_configs.vim
else
    map <leader>e :tabedit! /c/Users/E014168/workspace/github/vimrc/my_configs.vim<cr>
    autocmd! bufwritepost /c/Users/E014168/workspace/github/vimrc/my_configs.vim source /c/Users/E014168/workspace/github/vimrc/my_configs.vim
endif
 
" open terminal shortcuts
nmap <leader>tb :below terminal ++rows=20<CR>
nmap <leader>tr :rightb vertical terminal ++cols=75<CR>

" use ctrl+v for visual block mode
nnoremap <c-q> <c-v>

" set title of vim to current working directory 
set titlestring+=%{fnamemodify(getcwd(),':~')}

" interact directly with clipboard when yanking
set clipboard=unnamed

" Remap VIM 0 to first character
map 0 0

" use symbols to represent tabs
set list lcs=tab:>\ 

" use dots for leading spaces
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'

" do not conceal anything on json files
let g:indentLine_fileTypeExclude = ['json']

" do vertical diffs
set diffopt+=vertical

