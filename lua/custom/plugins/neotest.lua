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
      'rouge8/neotest-rust',
    },
    config = function()
      local neotest = require 'neotest'
      neotest.setup {
        adapters = {
          require 'neotest-python',
          require 'neotest-vitest',
          require 'neotest-rust',
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
      vim.keymap.set('n', '<leader>ts', neotest.summary.toggle, { desc = '([T]oggle) [T]est [S]ummary' })
      vim.keymap.set('n', ']t', function()
        neotest.jump.next { status = 'failed' }
      end, { desc = 'Next Failed [T]est' })
      vim.keymap.set('n', '[t', function()
        neotest.jump.prev { status = 'failed' }
      end, { desc = 'Previous Failed [T]est' })
    end,
  },
}
