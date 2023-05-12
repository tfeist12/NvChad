local M = {}
  -- custom mappings

  M.general = {
    n = {
      ["<C-h>"] = {"<cmd> TmuxNavigateLeft<CR>", "window left"},
      ["<C-l>"] = {"<cmd> TmuxNavigateRight<CR>", "window right"},
      ["<C-j>"] = {"<cmd> TmuxNavigateDown<CR>", "window down"},
      ["<C-k>"] = {"<cmd> TmuxNavigateUp<CR>", "window up"},
    },
  }

  M.custom = {
    -- normal mode
    n = {
       -- resize windows
       ["<C-Up>"] = {":resize +2<CR>", "resize up"},
       ["<C-Down>"] = {":resize -2<CR>", "resize down"},
       ["<C-Left>"] = {":vertical resize -2<CR>", "resize left"},
       ["<C-Right>"] = {":vertical resize +2<CR>", "resize right"},
    },
    -- insert mode
    i = {
       -- quickly exit insert mode
       ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
    },
    -- visual mode
    v = {
       -- stay in mode for indenting
       ["<"] = {"<gv", "move text left"},
       [">"] = {">gv", "move text right"},
    },
  }

return M
