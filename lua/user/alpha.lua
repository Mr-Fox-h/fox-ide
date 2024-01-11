local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
[[    .....                  ....                      ..  ]],
[[ .H8888888x.  '`+      .x~X88888Hx.        .H88x.  :~)88:]],
[[:888888888888x.  !    H8X 888888888h.     x888888X ~:8888]],
[[8~    `"*88888888"   8888:`*888888888:   ~   "8888X  %88"]],
[[!      .  `f""""     88888:        `%8        X8888      ]],
[[ ~:...-` :8L <)88: . `88888          ?>    .xxX8888xxxd> ]],
[[    .   :888:>X88! `. ?888%           X   :88888888888"  ]],
[[ :~"88x 48888X ^`    ~*??.            >   ~   '8888      ]],
[[<  :888k'88888X     .x88888h.        <   xx.  X8888:    .]],
[[  d8888f '88888X   :"""8888888x..  .x   X888  X88888x.x" ]],
[[ :8888!    ?8888>  `    `*888888888"    X88% : '%8888"   ]],
[[ X888!      8888~          ""***""       "*=~    `""     ]],
[[ '888       X88f                                         ]],
[[  '%8:     .8*"                                          ]],
[[     ^----~"`                                            ]],
[[    .....     .         ....                ..      .    ]],
[[  .d88888Neu. 'L    .xH888888Hx.         x88f` `..x88. .>]],
[[  F""""*8888888F  .H8888888888888:     :8888   xf`*8888% ]],
[[ *      `"*88*"   888*"""?""*88888X   :8888f .888  `"`   ]],
[[  -....    ue=:. 'f     d8x.   ^%88k  88888' X8888. >"8x ]],
[[         :88N  ` '>    <88888X   '?8  88888  ?88888< 888>]],
[[         9888L    `:..:`888888>    8> 88888   "88888 "8% ]],
[[  uzu.   `8888L          `"*88     X  88888 '  `8888>    ]],
[[,""888i   ?8888     .xHHhx.."      !  `8888> %  X88!     ]],
[[4  9888L   %888>   X88888888hx. ..!    `888X  `~""`   :  ]],
[['  '8888   '88%   !   "*888888888"       "88k.      .~   ]],
[[     "*8Nu.z*"           ^"***"`           `""*==~~`     ]],
}

dashboard.section.buttons.val = {
	dashboard.button("f", "󱁴  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("o", "  Open project here", ":NvimTreeOpen <CR>"),
	dashboard.button("g", "  System Monitor", ":lua _BTOP_TOGGLE() <CR>"),
	dashboard.button("r", "󱋡  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("g", "󰊢  Git option", ":Gitsigns <CR>"),
	dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
	dashboard.button("p", "󰞏  Notification of IDE", ":Telescope notify <CR>"),
	dashboard.button("h", "󰋗  Help", ":help <CR>"),
	dashboard.button("q", "  Exit", ":qa<CR>"),
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
