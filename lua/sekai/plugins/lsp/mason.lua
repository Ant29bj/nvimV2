local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

mason.setup()

mason_lspconfig.setup({
	ensure_installed = {
		-- Lsp Servers
		"tsserver",
		"html",
		"eslint",
		"clangd",
		"gopls",
		"cssls",
		"pyright",
		"rust_analyzer",
		"angularls",
		"emmet_ls",
		"jdtls",
		"vuels",
		"svelt",
	},
	automatic_installation = true,
})
