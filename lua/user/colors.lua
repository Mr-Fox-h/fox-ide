--"rebelot/kanagawa.nvim"
--"folke/tokyonight.nvim"
function ColorsTheme(color)
  color = color or "kanagawa"
  vim.cmd.colorscheme(color)
end
ColorsTheme()
