  
require('nvim-treesitter.configs').setup({
  highlight = {
    enable = true,
    disable = {} 
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = { 
    "c", 
    "lua", 
    "rust",
    "go",
    "rust",
    "python",
    "javascript",
    "json",
    "tsx",
    "json",
    "css",
  },
  autotag = {
    enable = true,
  }

})

require("nvim-treesitter.configs").setup {
  highlight = {
  },
  -- ...
  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil,  }
}

