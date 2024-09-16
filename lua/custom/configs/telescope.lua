function Toggle_telescope(harpoon_files)
  local finder = function()
    local paths = {}
    for _, item in ipairs(harpoon_files.items) do
      table.insert(paths, item.value)
    end

    return require("telescope.finders").new_table {
      results = paths,
    }
  end

  require("telescope.pickers")
      .new({}, {
        prompt_title = "Harpoon",
        finder = finder(),
        previewer = false,
        sorter = require("telescope.config").values.generic_sorter {},
        layout_config = {
          height = 0.4,
          width = 0.5,
          prompt_position = "top",
          preview_cutoff = 120,
        },
        attach_mappings = function(prompt_bufnr, map)
          map("n", "<leader>h", require("telescope.actions").close)
          map("n", "<leader>d", function()
            local state = require "telescope.actions.state"
            local selected_entry = state.get_selected_entry()
            local current_picker = state.get_current_picker(prompt_bufnr)

            table.remove(harpoon_files.items, selected_entry.index)
            current_picker:refresh(finder())
          end)
          return true
        end,
      })
      :find()
end
