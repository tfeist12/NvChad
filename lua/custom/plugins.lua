local plugins = {

  -- install lsp servers and formatters
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lsp
        "lua-language-server",
        "bash-language-server",
        "python-lsp-server",
        "gopls",
        "html-lsp",
        "css-lsp",
        "deno",
        "jq-lsp",
        "yaml-language-server",
        "helm-ls",
        -- format
        "stylua",
        "shfmt",
        "blue",
        "usort",
        "gofumpt",
        "goimports-reviser",
        "golines",
        "prettier",
        -- lint
        "shellcheck",
        "jsonlint",
        "yamllint",
      },
    },
  },

  -- setup lsp for installed servers
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  -- add trouble plugin for lsp
  {
    "folke/trouble.nvim",
    cmd = {
      "Trouble",
      "TroubleClose",
      "TroubleRefresh",
      "TroubleToggle",
    },
    lazy = true,
  },

  -- custom parser list
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "bash",
        "python",
        "go",
        "html",
        "css",
        "javascript",
        "typescript",
        "json",
        "yaml",
        "proto",
        "dockerfile",
      },
    },
  },

  -- smart splits
  {
    "mrjones2014/smart-splits.nvim",
    cmd = {
      "SmartCursorMoveLeft",
      "SmartCursorMoveRight",
      "SmartCursorMoveUp",
      "SmartCursorMoveDown",
      "SmartResizeLeft",
      "SmartResizeRight",
      "SmartResizeUp",
      "SmartResizeDown",
    },
    lazy = true,
  },

  -- vim-fugitive
  {
    "tpope/vim-fugitive",
    cmd = {
      "G",
      "Git",
    },
    lazy = true,
  },

  -- vim-be-good
  {
    "ThePrimeagen/vim-be-good",
    cmd = {
      "VimBeGood",
    },
    lazy = true,
  },

  -- helm template support
  {
    "towolf/vim-helm",
    ft = {
      "helm",
    },
    lazy = true,
  },
}

return plugins
