local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.goimports,         
        null_ls.builtins.formatting.black,         
        null_ls.builtins.formatting.clang_format,        
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.diagnostics.golangci_lint,
    },
})
