require('platformio').setup({
	lsp = 'clangd', --default: ccls, other option: clangd
	-- If you pick clangd, it also creates compile_commands.json

	-- Comment out following line if you want to disable the piomenu.
	menu_key = '<leader>p',
})

