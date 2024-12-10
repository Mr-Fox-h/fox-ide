local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
  [[                           ]],
  [[                           ]],
  [[                           ]],
  [[                           ]],
  [[                           ]],
  [[                           ]],
  [[                           ]],
  [[                           ]],
  [[                           ]],
  [[                           ]],
  [[                           ]],
  [[                           ]],
  [[                           ]],
  [[                           ]],
  [[███████ ██ ██████  ███████ ]],
  [[██      ██ ██   ██ ██      ]],
  [[█████   ██ ██   ██ █████   ]],
  [[██      ██ ██   ██ ██      ]],
  [[██ OX   ██ ██████  ███████ ]],
  [[                           ]],
  [[    Powered By  eovim    ]],
}

dashboard.section.buttons.val = {
  dashboard.button("<S-s>", "  Find File", ":Telescope find_files <CR>"),
  dashboard.button("<S-r>", "󱑆  Recent Files", ":Telescope oldfiles <CR>"),
  dashboard.button("<S-f>", "󱉶  Find Words", ":Telescope live_grep <CR>"),
  dashboard.button("<S-q>", "  Git Status", ":Telescope git_status <CR>"),
  dashboard.button("<S-c>", "  Configuration", ":e $MYVIMRC <CR>"),
  dashboard.button("<S-n>", "  Notification", ":Telescope notify <CR>"),
  dashboard.button("<S-m>", "󰿅  Exit", ": <CR>"),
}

local function footer()
  -- NOTE: requires the fortune-mod package to work
  -- local handle = io.popen("fortune")
  -- local fortune = handle:read("*a")
  -- handle:close()
  -- return fortune
  return "Mr-Fox-h"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
