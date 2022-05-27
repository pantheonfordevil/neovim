"               _                    
"    _ ____   _(_)_ __ ___  _ __ ___ 
"   | '_ \ \ / / | '_ ` _ \| '__/ __|
"  _| | | \ V /| | | | | | | | | (__ 
" (_)_| |_|\_/ |_|_| |_| |_|_|  \___|
"								by pantheonfordevil


" Setting variables
set number
" set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set encoding=UTF-8

" Plugins
call plug#begin()
Plug 'romgrk/doom-one.vim'
Plug 'rakr/vim-one'
Plug 'Mofiqul/dracula.nvim'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'gosukiwi/vim-atom-dark'
Plug 'scrooloose/nerdtree'
Plug 'vifm/vifm.vim'
Plug 'majutsushi/tagbar'
Plug 'tc50cal/vim-terminal'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'terryma/vim-multiple-cursors'
" Plug 'neoclide/coc.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'phanviet/vim-monokai-pro'
Plug 'tribela/vim-transparent'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'shaunsingh/solarized.nvim'
Plug 'lifepillar/vim-solarized8'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'
Plug 'startup-nvim/startup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
call plug#end()

set completeopt-=preview

" Doom One settings
let g:doom_one_terminal_colors = v:true

" Lua-configured plugins
lua << End
require('lualine').setup{
	options = {
		theme = "catppuccin"
	}
}
require("startup").setup{theme = "my_theme"}
End

" Syntax options
syntax on
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
let g:one_allow_italics = 1 
colorscheme catppuccin

" Adding some aliases
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev X x
cnoreabbrev ; :
cnoreabbrev hsplit split h
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
let mapleader = "\<Space>"

" Remapping some keybindings
nnoremap <C-w><C-h> :split h<CR>
nnoremap <C-t> :TagbarToggle<CR>
nnoremap <C-\> :NERDTreeToggle<CR>
