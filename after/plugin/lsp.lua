vim.opt.signcolumn = 'yes' -- Reserve space for diagnostic icons

local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
  'clangd',
  'sumneko_lua',
})

lsp.nvim_workspace()

lsp.setup()
