local err, autopairs = pcall(require,'nvim-autopairs')
if not err then
 return  
end

autopairs.setup()
