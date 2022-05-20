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

-- theme

vim.opt.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- nvim tree config
require'nvim-tree'.setup{
    diagnostics={
        enable=true
	},
}
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
    capabilities = capabilities,
}
require'lspconfig'.html.setup{}
