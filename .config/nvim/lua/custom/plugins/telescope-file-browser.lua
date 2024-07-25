return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  config = function()
    local browser = require('telescope').extensions.file_browser
    vim.keymap.set('n', '<leader>nf', browser.file_browser)
  end,
}
