local function get_hl(name)
  local ok, hl = pcall(vim.api.nvim_get_hl_by_name, name, true)
  if not ok then
    return
  end
  for _, key in pairs({"foreground", "background", "special"}) do
    if hl[key] then
      hl[key] = string.format("#%06x", hl[key])
    end
  end
  return hl
end

return {
  {
    "mcchrish/zenbones.nvim", 
    dependencies = {
      "rktjmp/lush.nvim"
    },
    config = function()
      vim.g.rosebones_lighten_comments = 100;
      vim.g.rosebones_darken_comments = 100;
      vim.cmd([[colorscheme rosebones]])
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "kyazdani42/nvim-web-devicons"
    },
    config = function()
      require('lualine').setup({
        theme = "rosebones"
      })
    end
  },
  {
    "shortcuts/no-neck-pain.nvim",
    dependencies = {
      "zenbones.nvim", 
    },
    version = "*",
    opts = function()
      return {
        autocmds = {
          enableOnVimEnter = true,
          enableOnTabEnter = true,
        },
        buffers = {
          colors = {
            background = get_hl("Normal")["background"],
            text = get_hl("Normal")["foreground"]
          }
        }
      }
    end,
    config = function(_, opts)
      require("no-neck-pain").setup(opts)
    end
  }
}

