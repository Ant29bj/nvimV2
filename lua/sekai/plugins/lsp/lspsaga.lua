local saga_status, saga = pcall(require, "lspsga")
if not saga_status then
  return  
end

saga.init_lsp_saga({
  move_in_saga = { prev = "UP", next = "<Tab>" },
  finder_action_keys = {
    open = "<CR>",
  },
  definition_action_keys = {
    edit = "<CR>"
  },
})

