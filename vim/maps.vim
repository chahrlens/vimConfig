"Rename leader
"let mapleader = ","
" Usual commands
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>
"nnoremap <C-w> :bdelete<CR>

" Teclas de acceso rápido para comandos de coc.nvim
nmap <silent> <leader>ca :CocList commands<CR>
nmap <silent> <leader>ce :CocList extensions<CR>
nmap <silent> <leader>cf :CocList -I symbols<CR>
nmap <silent> <leader>ci :CocList diagnostics<CR>
nmap <silent> <leader>cq :CocRestart<CR>
"CocServer
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>gi <Plug>(coc-implementation)
" Autocomplete all lenguages
" Habilitar el autocompletado de coc.nvim al presionar Tab
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"Better tab experience - from https://webdevetc.com/
map <leader>tn :tabnew<cr>
map <leader>t<leader> :tabnext
map <leader>tm :tabmove
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
"NerdTree
:let g:NERDTreeWinSize=40
nmap <Leader>nt :NERDTreeToggle<cr>
map <Leader>nf :NERDTreeFind<CR>
"sneak
let g:sneak#label = 1
map f <Plug>Sneak_f
map F <Plug>Sneak_F
"Find
noremap // :noh<CR>
