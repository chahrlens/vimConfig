set updatetime=100
set pumheight=20

inoremap <expr> <TAB>
     \ pumvisible() ? "\<C-n>" :
     \ coc#expandableOrJumpable() ?
     \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
     \ <SID>check_back_space() ? "\<TAB>" :
     \ coc#refresh()

	function! s:check_back_space() abort
		let col = col('.') - 1
		return !col || getline('.')[col - 1] =~# '\s'
	endfunction

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


" Configuración de coc.nvim
let g:coc_global_extensions = [
  \ 'coc-python',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-json',
  \ 'coc-yaml',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ ]

" Configuración de los lenguajes específicos
augroup CocSettings
  autocmd!
  autocmd FileType python setl tabstop=4 shiftwidth=4 softtabstop=4
  autocmd FileType python let g:coc_snippet_next = '<tab>'
  autocmd FileType python let g:coc_snippet_prev = '<s-tab>'
  autocmd FileType python let g:coc_snippet_jump_forward = '<tab>'
  autocmd FileType python let g:coc_snippet_jump_backward = '<s-tab>'
augroup end

