return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {

    },
    config = function (_, opts)
      require('telescope').setup(opts)
    end
  }
}
