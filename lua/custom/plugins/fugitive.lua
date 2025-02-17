return {
  {
    'tpope/vim-fugitive',
    dependencies = { 'tpope/vim-rhubarb' },
    config = function()
      vim.keymap.set('n', '<leader>gb', ':Git blame<CR>')
      vim.keymap.set('n', '<leader>go', ':GBrowse<CR>')
      vim.keymap.set('n', '<leader>gl', 'v:GBrowse<CR>')
      vim.keymap.set('v', '<leader>go', ':GBrowse<CR>')
    end,
  },
}
