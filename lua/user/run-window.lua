vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

local state = {
  floating = {
    buf = -1,
    win = -1,
  }
}

local function create_floating_window(opts)
  opts = opts or {}
  local width = opts.width or math.floor(vim.o.columns * 0.8)
  local height = opts.height or math.floor(vim.o.lines * 0.8)

  -- Calculate the position to center the window
  local col = math.floor((vim.o.columns - width) / 2)
  local row = math.floor((vim.o.lines - height) / 2)

  -- Create a buffer
  local buf = nil
  if vim.api.nvim_buf_is_valid(opts.buf) then
    buf = opts.buf
  else
    buf = vim.api.nvim_create_buf(false, true) -- No file, scratch buffer
  end

  -- Define window configuration
  local win_config = {
    relative = "editor",
    width = width,
    height = height,
    col = col,
    row = row,
    style = "minimal", -- No borders or extra UI elements
    border = "rounded",
  }

  -- Create the floating window
  local win = vim.api.nvim_open_win(buf, true, win_config)

  return { buf = buf, win = win }
end

local toggle_floating_run = function()
  if not vim.api.nvim_win_is_valid(state.floating.win) then
    state.floating = create_floating_window { buf = state.floating.buf }
    vim.api.nvim_buf_set_lines(state.floating.buf, 0, -1, false, { "Running your code..." })
    vim.defer_fn(function()
      local success, output = pcall(_FOX_IDE_RUN)
      if success then
        -- Display the output in the floating window
        vim.api.nvim_buf_set_lines(state.floating.buf, 0, -1, false, vim.split(output, "\n"))
      else
        -- Display the error in the floating window
        vim.api.nvim_buf_set_lines(state.floating.buf, 0, -1, false, { "Error:", output })
      end
    end, 100) -- Slight delay to show the floating window before running
  else
    vim.api.nvim_win_hide(state.floating.win)
  end
end

-- Example usage:
-- Create a floating window with default dimensions
vim.api.nvim_create_user_command("Run", toggle_floating_run, {})
