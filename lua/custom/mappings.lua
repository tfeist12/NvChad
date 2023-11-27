local M = {}
-- custom mappings

M.custom = {
  i = {
    -- quickly exit insert mode
    ["jk"] = { "<ESC>", "insert mode quick exit", opts = { nowait = true } },
  },
}

M.resizewindow = {
  n = {
    -- resize windows
    ["<C-Up>"] = { ":resize -2<CR>", "resize up" },
    ["<C-Down>"] = { ":resize +2<CR>", "resize down" },
    ["<C-Left>"] = { ":vertical resize +2<CR>", "resize left" },
    ["<C-Right>"] = { ":vertical resize -2<CR>", "resize right" },
  },
}

M.indent = {
  v = {
    -- stay in mode for indenting
    ["<"] = { "<gv", "indent text" },
    [">"] = { ">gv", "unindent text" },
  },
}

M.tmuxnavigate = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  },
}

M.verticalmovement = {
  n = {
    -- half page movement with automatic page centering
    ["<C-u>"] = { "<C-u>zz", "move up half of a page and center on line" },
    ["<C-d>"] = { "<C-d>zz", "move down half of a page and center on line" },

    -- search movement with automatic page centering
    ["n"] = { "nzzzv", "next in search and center on result" },
    ["N"] = { "Nzzzv", "previous in search and center on result" },
  },
}

return M
