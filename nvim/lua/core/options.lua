-- Tabs & Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.bo.softtabstop = 4

-- Clipboard
vim.opt.clipboard:append("unnamedplus")

-- Consider - as part of keyword
vim.opt.iskeyword:append("-")

vim.o.hlsearch = false
vim.wo.number = true
vim.o.mouse = 'a'
vim.o.breakindent = true
vim.o.undofile = true

--Search Settings
vim.o.ignorecase = true
vim.o.smartcase = true

-- Cursor Line
vim.opt.cursorline = true

-- Appearance
vim.wo.signcolumn = 'yes'
vim.diagnostic.config {
  float = { border = "rounded" }, -- add border to diagnostic popups
}
vim.opt.background = "dark"
vim.o.termguicolors = true

-- Working Directory
vim.cmd('set autochdir')


-- undo file
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undo"
vim.opt.swapfile = false

-- misc.
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.completeopt = 'menuone,noselect'
