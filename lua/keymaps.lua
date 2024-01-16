vim.keymap.set({ 'n', 'v' }, '<Space>', '<NOP>', { silent = true })

-- Deal with wrapped lines
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Just use Ctl motion to change windows
vim.keymap.set('n', '<C-j>', '<C-w>j', { silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { silent = true })
vim.keymap.set('n', '<C-h>', '<C-w>h', { silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { silent = true })

-- Usefull keymap--[[ s ]]
vim.keymap.set('n', '<C-k>', '<CMD>Man<CR>', { desc = "Open [M]an Page", silent = true })
vim.keymap.set('n', '<leader>o', 'm`o<ESC>``', { desc = "Insert empty line bellow current line", silent = true })
vim.keymap.set('n', '<leader>O', 'm`O<ESC>``', { desc = "Insert empty line above current line", silent = true })
vim.keymap.set('n', '<leader>i', '$i\n<ESC>O',
  { desc = "Move ending character to new line and open line between", silent = true })

-- Toggle Neotree

-- Telescope Keymaps
