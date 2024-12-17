return {
  'github/copilot.vim',
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_set_keymap('i', '<C-J>', 'copilot#Accept("<CR>")', { silent = true, expr = true })
    vim.g.copilot_filetypes = {
      ['*'] = false,
      ['javascript'] = true,
      ['javascriptreact'] = true,
      ['typescript'] = true,
      ['typescriptreact'] = true,
      ['sql'] = true,
      ['lua'] = false,
      ['rust'] = true,
      ['go'] = true,
      ['python'] = true,
    }
  end,
}
