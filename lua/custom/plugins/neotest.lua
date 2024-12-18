return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
      'nvim-neotest/neotest-python',
      'marilari88/neotest-vitest',
    },
    config = function()
      local neotest = require 'neotest'
      neotest.setup {
        adapters = {
          require 'neotest-python',
          require 'neotest-vitest',
        },
      }
      vim.keymap.set('n', '<leader>tc', neotest.run.run, { desc = 'Run the [T]est under the [C]ursor' })
      vim.keymap.set('n', '<leader>tf', function()
        neotest.run.run(vim.fn.expand '%')
      end, { desc = 'Run the [T]est [F]ile' })
      vim.keymap.set('n', '<leader>td', function()
        neotest.run.run { strategy = 'dap' }
      end, { desc = 'Run the [T]est under the [D]ebugger' })
      vim.keymap.set('n', '<leader>ta', neotest.run.attach, { desc = '[T]est runner, [A]ttach' })
      vim.keymap.set('n', '<leader>tr', function()
        neotest.output.open { enter = true }
      end, { desc = '[T]est [R]esults' })
    end,
  },
}
