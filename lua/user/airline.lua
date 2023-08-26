-- Color table for highlights
-- stylua: ignore
local colors = {
  bg       = '#100D11',
  fg       = '#bbc2cf',
  yellow   = '#ECBE7B',
  cyan     = '#008080',
  darkblue = '#081633',
  green    = '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue     = '#51afef',
  red      = '#ec5f67',
}

-- Config
require('lualine').setup {
  options = {
    theme = 'auto',
    component_separators = '▎',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '', right = '' }, right_padding = 2 },
    },
    lualine_b = { 'filename', { 'branch', icon = '' } },
    lualine_c = {},
    lualine_x = {},
    lualine_y = { 'filetype', { 'diagnostics', sources = { 'nvim_diagnostic' }, symbols = { error = ' ', warn = ' ', info = ' ', hint = '󰌵' } }, 'progress' },
    lualine_z = { { 'fileformat', symbols = { unix = '', dos = '', mac = '' }}, { 'location', separator = { right = '', left = '' }, left_padding = 2 } },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
