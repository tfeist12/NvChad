local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  -- lsp
  -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
  "lua_ls",
  "bashls",
  "pyright",
  "gopls",
  "html",
  "cssls",
  "denols",
  "jqls",
  "yamlls",
  "helm_ls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
