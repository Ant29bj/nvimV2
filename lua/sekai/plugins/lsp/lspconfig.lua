local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
	return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
	return
end

local typescript_setup, typescript = pcall(require, "typescript")
if not typescript_setup then
	return
end

local keymap = vim.keymap

local on_attach = function(client, bufnr)
	-- Enable completion triggered by <c-x><c-o>
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	local bufopts = { noremap = true, silent = true, buffer = bufnr }
	keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
	keymap.set("n", "gp", vim.lsp.buf.definition, bufopts)
	keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
	keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
	keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
	keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

lspconfig["html"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

typescript.setup({
	server = {
		capabilities = capabilities,
		on_attach = on_attach,
	},
})

lspconfig.tsserver.setup({
	on_attach = on_attach,
	capabilities,
})

lspconfig["eslint"].setup({})

lspconfig["cssls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig["angularls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig["gopls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig["jdtls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig["pyright"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig["rust_analyzer"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})
require("lspconfig").lua_ls.setup({
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
})

require("lspconfig").clangd.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

require("lspconfig").emmet_ls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

require("lspconfig").omnisharp.setup({})

require("lspconfig").dartls.setup({})
