vim.notify = require("notify")

vim.notify.setup({
  stages = "slide",
  fps = 60,
  max_width = 60,
  max_height = 40,
  icons = {
    DEBUG = "",
    ERROR = "",
    INFO = "",
    TRACE = "✎",
    WARN = ""
  },
})

require("telescope").load_extension("notify")

