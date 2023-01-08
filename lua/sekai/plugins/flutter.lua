local status, flutter = pcall(require("vim-flutter"))
if not status then
	return
end

flutter.setup()
