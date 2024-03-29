vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { norempa = true, silent = true }

--Save and quit
keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>q", ":q<CR>")
--NvimTree
keymap.set("n", "<leader>nt", ":NvimTreeToggle<CR>")

--Telescope
local builtin = require("telescope.builtin")
keymap.set("n", "<leader>ff", builtin.find_files, {})
keymap.set("n", "<leader>fg", builtin.live_grep, {})
keymap.set("n", "<leader>fb", builtin.buffers, {})
keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- Tabs
keymap.set("n", "<S-c>", ":Bdelete<CR>")
keymap.set("n", "<leader>l", ":BufferNext<CR>")
keymap.set("n", "<leader>h", ":BufferPrev<CR>")
keymap.set("n", "<S-l>", ":BufferMoveNext<CR>")
keymap.set("n", "<S-h>", ":BufferMovePrev<CR>")
keymap.set("n", "<S-c>", ":BufferDelete<CR>")
-- Buffer
keymap.set("n", "<A-h>", ":SmartResizeLeft<CR>")
keymap.set("n", "<A-l>", ":SmartResizeRight<CR>")

vim.keymap.set("n", "rn", "<cmd>Lspsaga rename<CR>")
vim.keymap.set("n", "<leader>dd", "<cmd>Lspsaga show_line_diagnostics<CR>")
vim.keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>")
vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>")
vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>")
vim.keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>")
vim.keymap.set("n", "[", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
vim.keymap.set("n", "]", "<cmd>Lspsaga diagnostic_jump_next<CR>")
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>")
vim.keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>")
