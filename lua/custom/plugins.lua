local overrides = require 'custom.configs.overrides'

local plugins = {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      {
        'jose-elias-alvarez/null-ls.nvim',

        config = function()
          require 'custom.configs.null-ls'
        end,
      },
    },

    config = function()
      require 'plugins.configs.lspconfig'
      require 'custom.configs.lspconfig'
    end,
  },

  {
    'williamboman/mason.nvim',
    opts = overrides.mason,

    config = function()
      require 'custom.configs.mason'
    end,
  },

  {
    'nvim-treesitter/nvim-treesitter',
    opts = overrides.treesitter,
  },

  {
    'nvim-tree/nvim-tree.lua',
    opts = overrides.nvimtree,
  },

  {
    'max397574/better-escape.nvim',
    event = 'InsertEnter',
    config = function()
      require('better_escape').setup()
    end,
  },

  {
    'thePrimeagen/vim-be-good',
    cmd = 'VimBeGood',
    config = function()
      require 'vim-be-good'
    end,
  },
}

return plugins
