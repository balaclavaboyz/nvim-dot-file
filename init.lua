local set=vim.opt

set.expandtab=true
set.smarttab=true
set.shiftwidth=4
set.tabstop=4
set.showmode=false

set.hlsearch=true
set.incsearch=true
set.ignorecase=true
set.smartcase=true
set.termguicolors=true

set.splitbelow=true
set.splitright=true
set.wrap=false
set.scrolloff=5
set.fileencoding='utf-8'

set.number=true
set.cursorline=true
set.hidden=true

-- save bind
local keymap=vim.api.nvim_set_keymap
keymap('n','<c-s>',':w<CR>',{})
keymap('i','<c-s>','<Esc>:w<CR>a',{})

-- navigation
local opts={noremap=true}
keymap('n','<c-j>','<c-w>j',opts)
keymap('n','<c-h>','<c-w>h',opts)
keymap('n','<c-k>','<c-w>k',opts)
keymap('n','<c-l>','<c-w>l',opts)

-- sourcing
keymap('n','<Leader>sv',':luafile %<CR>',{})

-- Explorer bind
keymap('n','<c-e>',':Ex<CR>',{})

vim.opt.background = 'dark'
vim.cmd([[colorscheme gruvbox]])

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use {'ellisonleao/gruvbox.nvim'}
end)

