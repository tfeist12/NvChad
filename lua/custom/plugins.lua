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
    },
    opts = {},
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

  -- harpoon
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",

    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
    },

    config = function()
      require("harpoon"):setup()
      require "custom.configs.telescope"
    end,
  },

  -- smart splits
  {
    "mrjones2014/smart-splits.nvim",
    -- unable to get proper behaviour while lazy loading
    -- makes minimal impact on startup time
    lazy = false,
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

  -- copilot
  {
    "zbirenbaum/copilot.lua",
    config = function()
      require("copilot").setup {
        panel = { enabled = true },
        suggestion = { enabled = false },
      }
    end,
    lazy = false,
  },

  -- copilot cmp
  {
    "zbirenbaum/copilot-cmp",
    config = function()
      require("copilot_cmp").setup()
    end,
    lazy = false,
  },

  -- copilot chat
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    cmd = {
      "CopilotChat",
    },
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    build = "make tiktoken",
    opts = {},
    lazy = true,
  },
}

return plugins
