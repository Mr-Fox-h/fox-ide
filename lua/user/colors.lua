--"rebelot/kanagawa.nvim"
--"folke/tokyonight.nvim"
function ColorsTheme(color)
  color = color or "kanagawa-dragon"
  vim.cmd.colorscheme(color)
end
ColorsTheme()
