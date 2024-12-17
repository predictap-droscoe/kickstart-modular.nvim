return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    lazy = false,
    config = function()
      require('bufferline').setup()
      vim.keymap.set('n', '<leader>q', ':bp<cr>')
      vim.keymap.set('n', '<leader>w', ':bn<cr>')
    end,
  },
}
