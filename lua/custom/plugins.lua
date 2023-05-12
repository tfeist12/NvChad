local plugins = {

  -- custom parser list 
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "bash",
        "python",
        "go",
        "html",
        "css",
        "javascript",
        "typescript",
        "json",
        "proto",
        "dockerfile",
      },
    },
  },

  -- install vim fugitive
  {
    "tpope/vim-fugitive",
    lazy = false,
  },

}

return plugins
