local servers = {
  "lua_ls",
  "pyright",
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
