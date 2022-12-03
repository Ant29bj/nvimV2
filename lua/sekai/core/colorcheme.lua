
vim.cmd("colorscheme gruvbox")

local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
if not status then 
  print("colorsheme not installed")
  return
end

require("onedark").setup{
   code_style = {
        comments = 'none',
        keywords =  'italic',
        functions = 'italic',
        strings = 'none',
        variables = 'none'
    },
   diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}

require("onedark").load()
