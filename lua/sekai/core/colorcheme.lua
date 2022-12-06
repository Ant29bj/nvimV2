vim.cmd("colorscheme gruvbox")

local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
if not status then
	print("colorsheme not installed")
	return
end

require("onedark").setup({
  
  style = 'cool',
	transparent = false,
	term_colors = true,
	ending_tildes = true,
	cmp_itemkind_reverse = false,

	toggle_style_key = "<leader>cl", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
	toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between
	code_style = {
		comments = "italic",
		keywords = "italic,bold",
		functions = "bold",
		strings = "none",
		variables = "italic",
	},

	colors = {
		bright_yellow = "#E0C07B",
	}, -- Override default color
	highlights = {
		["@variables"] = { bg = "$bright_yellow", fmt = "italic" },
	}, -- Override highlight groups

	diagnostics = {
		darker = true,
		undercurl = true,
		background = true,
	},
})

require("onedark").load()
