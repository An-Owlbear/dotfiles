-- vim.keymap.set('n', '<leader>nf', '<cmd>Neotree focus filesystem left<CR>', { desc = '[n]eotree view [f]iles' })
-- vim.keymap.set('n', '<leader>ng', '<cmd>Neotree focus git_status left<CR>', { desc = '[n]eotree view [g]it status' })
-- vim.keymap.set('n', '<leader>nb', '<cmd>Neotree focus buffers left<CR>', { desc = '[n]eotree view [b]uffers' })
-- vim.keymap.set('n', '<leader>nc', '<cmd>Neotree close<CR>', { desc = '[n]eotree [c]lose' })

return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_hidden = false,
        },
      },
      window = {
        mappings = {
          ['<space>'] = 'noop',
        },
      },
    }
  end,
}
