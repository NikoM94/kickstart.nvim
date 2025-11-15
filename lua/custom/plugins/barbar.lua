return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  event = 'BufReadPre',
  opts = {
    name_formatter = function(buf)
      if not buf.name or buf.name == '' then
        return '[No Name]'
      end
      return vim.fn.fnamemodify(buf.name, ':t')
    end,
    sidebar_filetypes = {
      NvimTree = true,
      ['snacks_layout_box'] = { event = 'BufWipeout' },
    },
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    -- animation = true,
    -- insert_at_start = true,
    -- …etc.
  },
  keys = {
    { '<S-l>', '<cmd>:BufferNext<CR>', desc = 'Go to next buffer' },
    { '<S-h>', '<cmd>:BufferPrevious<CR>', desc = 'Go to previous buffer' },
    { '<leader>bo', '<cmd>:BufferCloseAllButCurrent<CR>', desc = 'Close other buffers' },
  },
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
