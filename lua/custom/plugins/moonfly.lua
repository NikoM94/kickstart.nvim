return {
  'bluz71/vim-wmoonfly-colors',
  name = 'moonfly',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'moonfly'
  end,
}
