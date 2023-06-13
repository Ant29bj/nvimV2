local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
	return
end

local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
	print("luasnip no funciona")
	return
end

local lspkind_status, lspkind = pcall(require, "lspkind")
if not lspkind_status then
	return
end

require("luasnip/loaders/from_vscode").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["UP"] = cmp.mapping.select_prev_item(),
		["<Tab>"] = cmp.mapping.select_next_item(),
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = false }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	}),
	formatting = {
		format = function(entry, vim_item)
			vim_item.menu = ({
				nvim_lsp = "〄",
				nvim_lua = "",
				luasnip = "𝓢",
				buffer = "",
			})[entry.source.name]
			vim_item.kind = ({
				Text = "󰦨",
				Method = " Method",
				Function = "󰊕 Function",
				Constructor = " Constructor",
				Field = " Field",
				Variable = "Variable",
				Class = "  Class",
				Interface = "",
				Module = "󰕳",
				Property = "",
				Unit = "",
				Value = "$",
				Enum = "",
				Keyword = "Keyword",
				Snippet = "󰅳",
				Color = "",
				File = "",
				Reference = "",
				Folder = "",
				EnumMember = "",
				Constant = "",
				Struct = "",
				Event = "",
				Operator = "",
				TypeParameter = "",
			})[vim_item.kind]
			return vim_item
		end,
	},
})
