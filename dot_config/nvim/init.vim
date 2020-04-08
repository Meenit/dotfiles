syntax on

set number
set relativenumber
set ruler

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

set cursorline

" === NETRW =======================

" Explore options (netrw) :Explore
let g:netrw_banner = 0
let g:netrw_liststyle = 3

" 1:Horizontal 2:Veritcal 3:NewTab 4:PrevWindow
let g:netrw_browse_split = 2

let g:netrw_altv = 1

" Ingore SWP
let g:netrw_list_hide= '.*\.swp$'

" ================================


" Deoplote 
let g:deoplete#enable_at_startup = 1

" Gruvbox
let g:gruvbox_contrast_dark = 'hard'
g:gruvbox_invert_tabline = '1'

" Enable Svelete plugin
let g:vim_svelte_plugin_load_full_syntax = 1

" Browser for Markdown
let g:mkdp_browser = 'firefox-wayland'

" Plugins
" Vim-Plug Plugin Manager
call plug#begin('~/local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

Plug 'leafOfTree/vim-svelte-plugin', {}

Plug 'preservim/nerdtree'

Plug 'morhetz/gruvbox'

call plug#end()

" Bindings
map <C-n> :NERDTreeToggle<CR>

" Colorscheme
colorscheme gruvbox
