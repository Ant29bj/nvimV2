vim.g.mapleader= " "

local keymap = vim.keymap

--Save and quit
keymap.set("n","<leader>w",":w<CR>")
keymap.set("n","<leader>q",":q<CR>")
--NvimTree
keymap.set("n","<leader>nt",":NvimTreeToggle<CR>")
--Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- Tabs
keymap.set('n', '<S-c>',':Bdelete<CR>')
keymap.set('n','<leader>l',':BufferNext<CR>')
keymap.set('n','<leader>h',':BufferPrev<CR>')
keymap.set('n','<S-l>',':BufferMoveNext<CR>')
keymap.set('n','<S-h>' ,':BufferMovePrev<CR>')
keymap.set('n','<S-c>',':BufferDelete<CR>')

