local null_ls = require "null-ls"
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  -- define formatting sources
  formatting.stylua,
  formatting.blue,
  formatting.gofumpt,
  formatting.goimports_reviser,
  formatting.golines,
  formatting.prettier,
  lint.shellcheck,

  -- auto format on save
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds {
        group = augroup,
        buffer = bufnr,
      }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
