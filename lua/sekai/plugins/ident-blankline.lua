local status, blank_line = pcall(require("indent_blankline"))
if not status then
	print("colorsheme not installed")
	return
end
vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup({
	space_char_blankline = " ",
	show_current_context = true,
	show_current_context_start = true,
})
