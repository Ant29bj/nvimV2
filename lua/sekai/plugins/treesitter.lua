  
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
  },

  rainbow = {
    enable = true,
    extended_mode = true,
     }

})


