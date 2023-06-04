local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
[[                                                                       ]],
[[                                                                       ]],
[[ ███████████    ███████    █████ █████    █████ ██████████   ██████████]],
[[░░███░░░░░░█  ███░░░░░███ ░░███ ░░███    ░░███ ░░███░░░░███ ░░███░░░░░█]],
[[ ░███   █ ░  ███     ░░███ ░░███ ███      ░███  ░███   ░░███ ░███  █ ░ ]],
[[ ░███████   ░███      ░███  ░░█████       ░███  ░███    ░███ ░██████   ]],
[[ ░███░░░█   ░███      ░███   ███░███      ░███  ░███    ░███ ░███░░█   ]],
[[ ░███  ░    ░░███     ███   ███ ░░███     ░███  ░███    ███  ░███ ░   █]],
[[ █████       ░░░███████░   █████ █████    █████ ██████████   ██████████]],
[[░░░░░          ░░░░░░░    ░░░░░ ░░░░░    ░░░░░ ░░░░░░░░░░   ░░░░░░░░░░ ]],
[[                                                                       ]],
[[                                                                       ]],
}



dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("o", "  Open project here", ":NvimTreeOpen <CR>"),
	dashboard.button("g", "  System Monitor", ":lua _BTOP_TOGGLE() <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("g", "  Git option", ":lua _LAZYGIT_TOGGLE() <CR>"),
	dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
	dashboard.button("p", "  Notification of IDE", ":Telescope notify <CR>"),
	dashboard.button("h", "󰋖  Help", ":help <CR>"),
	dashboard.button("q", "  Exit", ":qa<CR>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "mr-fox-h.github.io"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
