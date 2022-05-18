" Basic
	syntax on
	set encoding=utf-8
	set number

" Auto completion
	set wildmode=longest,list,full
" Split open at the bottom or right
	set splitbelow splitright
" Copy selected text to system clipboard (requires gvim installed)	
	vnoremap <C-c> "*Y :let @+=@*<CR>
	map <C-p> "+P

call plug#begin('~/vimfiles/plugged')
	Plug 'itchyny/lightline.vim'
	Plug 'preservim/nerdtree'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'morhetz/gruvbox'
	Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'neovim/nvim-lspconfig'
call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox

nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <C-e> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


set noshowmode
