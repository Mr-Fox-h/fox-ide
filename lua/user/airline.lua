require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = { { 'mode', icon = '' } },
    lualine_b = { { 'branch', icon = '' }, 'diff', 'filetype', { 'filename', icon = '鑢' } },
    lualine_c = {},
    lualine_x = {},
    lualine_y = { { 'diagnostics', sources = { 'nvim_diagnostic' }, symbols = { error = ' ', warn = ' ', info = ' ', hint = '󰌵' } } },
    lualine_z = { { 'fileformat', symbols = { unix = '', dos = '', mac = '' }, separator = { right = '', left = '' }, color = { fg = nil, bg = '#f2545b' } }, 'filesize', { 'location', separator = { right = '', left = '' } }, { 'progress', icon = '', separator = { right = '▊', left = '' }, color = { bg = '#74c69d' } } }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
