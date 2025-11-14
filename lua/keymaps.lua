-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- setup keymap to enter this file
vim.keymap.set('n', '<leader>vc', '<cmd>:e $MYVIMRC<CR>')
-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
--remap : to FineCmdLine
vim.keymap.set('n', ':', '<cmd>FineCmdline<CR>', { noremap = true })
--map <leader-l> to :wqa command mode in case the plugin breaks
vim.keymap.set('n', '<leader>l', '<cmd>:wqa<CR>')
--remap <C-e> to :NvimTreeOpen
vim.keymap.set('n', '<leader>e', '<cmd>:NvimTreeToggle<CR>')
--move to next/previous buffer
vim.keymap.set('n', '<S-l>', '<cmd>:BufferLineCycleNext<CR>')
vim.keymap.set('n', '<S-h>', '<cmd>:BufferLineCyclePrev<CR>')
-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

-- keymaps for persistence session manager
vim.keymap.set('n', '<leader>qs', function()
  require('persistence').load()
end, { desc = 'Load the session for the current directory' })

vim.keymap.set('n', '<leader>qS', function()
  require('persistence').select()
end, { desc = 'Select session to load' })

vim.keymap.set('n', '<leader>ql', function()
  require('persistence').load { last = true }
end, { desc = 'Load last session' })

vim.keymap.set('n', '<leader>qd', function()
  require('persistence').stop()
end, { desc = "Don't save session on exit" })
