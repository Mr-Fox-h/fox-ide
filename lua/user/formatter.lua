-- LSP Formating --
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client then return end
    if client.supports_method('textDocument/formatting') then
      vim.api.nvim_create_autocmd('BufWritePre', {
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
        end
      })
    end
  end,
})

-- Python Setup --
require 'lspconfig'.pyright.setup {}

-- Rust Setup --
require 'lspconfig'.rust_analyzer.setup {}

-- Ruby Setup --
require 'lspconfig'.rubocop.setup {}

-- C & CPP Setup --
require 'lspconfig'.clangd.setup {}

-- Ocaml Setup --
require 'lspconfig'.ocamllsp.setup {}
