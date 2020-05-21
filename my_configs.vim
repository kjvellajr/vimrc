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
    map <leader>e :tabedit! /home/$USER/workspace/vimrc/my_configs.vim<cr>
    autocmd! bufwritepost /home/$USER/workspace/vimrc/my_configs.vim source /home/$USER/workspace/vimrc/my_configs.vim
endif
 
" open terminal shortcuts
" nmap <leader>tb :below terminal ++rows=20<CR>
" nmap <leader>tr :rightb vertical terminal ++cols=75<CR>

" set title of vim to current working directory 
set titlestring+=%{fnamemodify(getcwd(),':~')}

" interact directly with clipboard when yanking
set clipboard=unnamedplus

" Remap VIM 0 to first character
" map 0 0

" use symbols to represent tabs
set list lcs=tab:>\ 

" tabs will be two spaces
set sw=2

" Also run `goimports` on your current file on every save
" Might be be slow on large codebases, if so, just comment it out
let g:go_fmt_command = "goimports"

" Status line types/signatures.
let g:go_auto_type_info = 1"

" ale config for vue
let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}
let g:ale_linters = {'vue': ['eslint', 'vls']}

" use :sudow to write current file using sudo
cnoremap sudow w !sudo tee % >/dev/null

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

" use dots for leading spaces
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'

" allow nerdtree line indents
autocmd FileType help,nerdtree IndentLinesDisable

" vim-ctrlspace settings
set nocompatible
set hidden
set encoding=utf-8

" vim-tmux-navigator settings
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>

" set curser to bar when in insert mode, back to block when not
:autocmd InsertEnter * silent !echo -ne "\e[5 q"
:autocmd InsertLeave * silent !echo -ne "\e[1 q"

