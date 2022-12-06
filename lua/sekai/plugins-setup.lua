vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile augroup end
]])

--Bootstraping
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	--Colorscheme
	use("morhetz/gruvbox")
	use("navarasu/onedark.nvim")
	-- Transparent
	use("xiyaowong/nvim-transparent")
	--Buffer navigation
	use("christoomey/vim-tmux-navigator")
	--Nvim Tree an icons
	use("nvim-tree/nvim-tree.lua")
	use("kyazdani42/nvim-web-devicons")
	--Lua line
	use("nvim-lualine/lualine.nvim")
	--Fuzzy finde Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	-- autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- lsp servers
	-- configure lsp
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("jose-elias-alvarez/typescript.nvim")
	use("onsails/lspkind.nvim")
	use({ "mhartington/formatter.nvim" })
	use("MunifTanjim/prettier.nvim")
	-- Java
	use("mfussenegger/nvim-jdtls")
	-- tabs
	use({ "romgrk/barbar.nvim", wants = "nvim-web-devicons" })

	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")
	use("nvim-treesitter/nvim-treesitter")
	use("windwp/nvim-autopairs")
	use("p00f/nvim-ts-rainbow")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
