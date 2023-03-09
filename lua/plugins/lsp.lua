return {
  {
    "williamboman/mason.nvim",
    config = true
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "mason.nvim"
    },
    opts = {
      ensure_installed = {
        "lua_ls",
        "clangd"
      },
    },
    config = function(_, opts)
      require("mason-lspconfig").setup(opts)
    end
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason-lspconfig.nvim",
    },
    config = function()
      require'lspconfig'.clangd.setup{}
    end
  },
  {
    "folke/neodev.nvim",
    dependencies = {
      "nvim-lspconfig",
    },
    config = function ()
      require("neodev").setup()
      require'lspconfig'.lua_ls.setup({
        settings = {
          Lua = {
            completion = {
              callSnippet = "Replace"
            }
          }
        }
      })
    end
  },
}
