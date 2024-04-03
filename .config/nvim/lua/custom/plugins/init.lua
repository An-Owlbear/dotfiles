-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'gelguy/wilder.nvim',
  config = function ()
    local wilder = require('wilder')
    wilder.setup({modes = {':', '/', '?'}})
  end
}

