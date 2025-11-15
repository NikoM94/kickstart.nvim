return {
  'kdheepak/tabline.nvim',
  config = function()
    require('tabline').setup {
      options = {
        show_filename_only = true,
      },
      keys = {
        { '<S-l>', '<cmd>:TabLineBufferNext<CR>', desc = 'Go to next buffer' },
        { '<S-h>', '<cmd>:TabLineBufferPrevious<CR>', desc = 'Go to previous buffer' },
        { '<leader>bo', '<cmd>:BufferLineCloseOthers<CR>', desc = 'Close other buffers' },
      },
    }
  end,
}
