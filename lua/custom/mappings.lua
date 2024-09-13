local M = {}
-- custom mappings

M.custom = {
  i = {
    -- quickly exit insert mode
    ["jk"] = { "<ESC>", "insert mode quick exit", opts = { nowait = true } },
  },
}

M.indent = {
  v = {
    -- stay in mode for indenting
    ["<"] = { "<gv", "indent text" },
    [">"] = { ">gv", "unindent text" },
  },
}

M.navigation = {
  n = {
    ["<C-h>"] = { "<cmd> SmartCursorMoveLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> SmartCursorMoveRight<CR>", "window right" },
    ["<C-k>"] = { "<cmd> SmartCursorMoveUp<CR>", "window up" },
    ["<C-j>"] = { "<cmd> SmartCursorMoveDown<CR>", "window down" },
  },
}

M.resizewindow = {
  n = {
    ["<S-Left>"] = { "<cmd> SmartResizeLeft<CR>", "resize left" },
    ["<S-Right>"] = { "<cmd> SmartResizeRight<CR>", "resize right" },
    ["<S-Up>"] = { "<cmd> SmartResizeUp<CR>", "resize up" },
    ["<S-Down>"] = { "<cmd> SmartResizeDown<CR>", "resize down" },
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
