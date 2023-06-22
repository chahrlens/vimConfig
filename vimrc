" Habilitar el administrador de complementos vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"TABS DELIMITER
" Configuración predeterminada para la sangría de 2 espacios
set tabstop=2
set shiftwidth=2
set expandtab
" Configuración específica para Python
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
" Configuración adicional para la interfaz de usuario
set hidden
set encoding=utf-8
"set termguicolors

"gruvBox configuration
"set background=dark " or light if you want light mode
"colorscheme gruvbox
so ~/.vim/themes/gruvbox.vim
"other irrelevants
so ~/.vim/maps.vim
"AleLinter
"so ~/.vim/aleLinter.vimi
"CocServer
so ~/.vim/coc.vim
let g:coc_global_config="$HOME/.config/coc/coc-settings.json"
set rnu    			" relative numbers
set number			" line numbers

set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

set clipboard=unnamedplus       " to use the operating system clipboard
" Guardar automáticamente al cambiar de ventana o al perder el enfoque
autocmd FocusLost * silent! wall
autocmd BufLeave * silent! wall

" Complemento para autocompletado y más con coc.nvim
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" status bar
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'

" colorschemes
Plug 'morhetz/gruvbox'
"delimiter mate llaves
Plug 'Raimondi/delimitMate'
"Ale linter
"Plug 'dense-analysis/ale'
"NerdTree
Plug 'preservim/nerdtree'
"sneak
Plug 'justinmk/vim-sneak'
"gitgutter
Plug 'airblade/vim-gitgutter'
call plug#end()

