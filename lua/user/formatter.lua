-- LSP Formating --
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client then
      return
    end
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
        end,
      })
    end
  end,
})

local lspconfig = require("lspconfig")

-- Python Setup --
lspconfig.pyright.setup({})

-- Rust Setup --
lspconfig.rust_analyzer.setup({})

-- Ruby Setup --
lspconfig.rubocop.setup({})

-- C & CPP Setup --
lspconfig.clangd.setup({})

-- TypeScript/JavaScript Setup --
lspconfig.ts_ls.setup({})

-- Nim Setup
lspconfig.nimls.setup({})
