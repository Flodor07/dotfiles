local null_ls = require "null-ls"
local augorup = vim.api.nvim_create_augroup("LspFormatting", {})

local opts = {
  sources = {
    null_ls.builtins.formatting.prettierd,
  },
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds {
        group = augorup,
        buffer = bufnr,
      }

      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augorup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { buffer = bufnr }
        end,
      })
    end
  end,
}

return opts
