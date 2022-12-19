
-- number
vim.opt.nu = true
vim.opt.relativenumber = true

-- tab
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- wrap on the edge
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.list = false

-- undotree & backup
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- highlight search
-- vim.opt.hlsearch = false
vim.opt.incsearch = true

-- color
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- misc
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "85"

-- vim.g.mapleader = " "
