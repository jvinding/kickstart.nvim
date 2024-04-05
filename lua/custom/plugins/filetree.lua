return {
  'nvim-neo-tree/neo-tree.nvim',
  lazy = false,
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  keys = {
    {
      '<leader>st',
      function()
        require('neo-tree.command').execute {
          toggle = true,
          source = 'filesystem',
          position = 'left',
        }
      end,
      desc = '[T]ree (root dir)',
    },
    {
      '<leader>sb',
      function()
        require('neo-tree.command').execute {
          toggle = true,
          source = 'buffers',
          position = 'left',
        }
      end,
      desc = '[B]uffers (root dir)',
    },
    {
      '<leader>sv',
      function()
        require('neo-tree.command').execute {
          toggle = true,
          source = 'git_status',
          position = 'left',
        }
      end,
      desc = '[V]ersion control',
    },
  },

  config = function()
    require('neo-tree').setup {}
  end,
}
