local servers = {
	"lua_ls",
	"cssls",
	"html",
	"tsserver",
	"pyright",
  "ruby_ls",
  "clangd",
  "asm_lsp",
  "rust_analyzer"
}

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "󰬐",
			package_pending = "󰬗",
			package_uninstalled = "󰬜",
		},
	},
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

