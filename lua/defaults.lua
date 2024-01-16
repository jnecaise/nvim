vim.o.cmdheight = 1
vim.o.colorcolumn = "80"
vim.o.expandtab = true
vim.o.matchtime = 3
vim.o.scrolloff = 5
vim.o.shiftwidth = 2
vim.o.showmatch = true
vim.o.smartindent = true
vim.o.softtabstop = true
vim.o.tabstop = 4
vim.o.wrap = true
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldenable = false
vim.o.foldlevel = 99
vim.o.hlsearch = false
vim.o.number = true
vim.o.relativenumber = true
vim.o.mouse = "a"
vim.o.clipboard = "unnamedplus"
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.wo.signcolumn = "yes"

vim.o.update = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

vim.o.completeopt = "menuone,noselect,noinsert,preview"

vim.o.background = "dark"
vim.o.termguicolors = true
vim.cmd.set("nospell")
vim.cmd.colorscheme("onedark")

vim.api.nvim_create_autocmd("FileType", {
  command = "set formatoptions-=cro"
})

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

