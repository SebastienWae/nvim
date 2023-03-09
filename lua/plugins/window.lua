return {
  {
    "s1n7ax/nvim-window-picker",
    keys = {
      {
        "<leader>wo", function()
          local picked_window_id = require('window-picker').pick_window()
          if (picked_window_id) then
            vim.api.nvim_set_current_win(picked_window_id)
          end
        end, desc = "Pick a window"
      },
    },
    opts = {
      selection_chars = "ASDFJKLL;GH",
      include_current_win = true,
      show_prompt = false,
      filter_rules = {
        bo = {
          filetype = { 'NvimTree', "neo-tree", "notify", "no-neck-pain" },
          buftype = { 'terminal' },
        },
        wo = {},
        file_path_contains = {},
        file_name_contains = {},
      },
    },
    config = function(_, opts)
      require("window-picker").setup(opts)
    end
  }
}
