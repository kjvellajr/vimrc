" show hidden files in nerdtree by default
let NERDTreeShowHidden=1

" edit personal vim config in a new tab
map <leader>e :tabedit! ~/.vim_runtime/my_configs.vim<cr>

" open terminal shortcuts
nmap <leader>tb :below terminal ++rows=20<CR>
nmap <leader>tr :rightb vertical terminal ++cols=75<CR>
