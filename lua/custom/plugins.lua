local plugins = {

  -- install lsp servers and formatters
  {
   "williamboman/mason.nvim",
   opts = {
      ensure_installed = {
        -- lsp
        "lua-language-server",
        "bash-language-server",
        "pyright",
        "gopls",
        "html-lsp",
        "css-lsp",
        "deno",
        -- format 
        "stylua",
        "gofumpt",
        "black",
        "prettier",
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

  -- tmux integration
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  -- install vim-fugitive
  {
    "tpope/vim-fugitive",
    lazy = false,
  },

  -- install vim-be-good
  {
    "ThePrimeagen/vim-be-good",
    lazy = false,
  },

}

return plugins
