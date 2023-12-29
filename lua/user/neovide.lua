if vim.g.neovide then

  -- Fonts
  vim.o.guifont = "JetBrainsMono Nerd Font"

  require('telescope').setup{
    defaults = {
      winblend = 70,
    }
  }
  vim.g.neovide_floating_blur_amount_x = 5.0
  vim.g.neovide_floating_blur_amount_y = 5.0
  vim.g.neovide_floating_shadow = true
  vim.g.neovide_floating_z_height = 40
  vim.g.neovide_light_angle_degrees = 45
  vim.g.neovide_light_radius = 10

  -- Scroll animation
  vim.g.neovide_scroll_animation_length = 0.5
  vim.g.neovide_scroll_animation_far_lines = 1

  -- Mouse setting
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_cursor_antialiasing = false
  vim.g.neovide_cursor_animate_in_insert_mode = true
  vim.g.neovide_cursor_animate_command_line = true
  vim.g.neovide_cursor_vfx_mode = "wireframe"
  vim.g.neovide_underline_stroke_scale = 1.0
  vim.g.neovide_cursor_trail_size = 0.8

  -- Theme and window
  vim.g.neovide_theme = 'auto'
  vim.g.neovide_unlink_border_highlights = true
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_scale_factor = 0.45
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(1.25)
  end)
  vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1/1.25)
  end)

  -- Profiler
  vim.g.neovide_profiler = false
end
