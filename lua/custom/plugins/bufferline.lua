return {
  {
    'akinsho/bufferline.nvim',
    config = function()
      require('bufferline').setup {
        options = {
          numbers = 'buffer_id',
          offsets = {
            {
              filetype = 'snacks_layout_box',
              text_align = 'center',
              separator = true,
            },
          },
          separator_style = 'slope',
        },
      }
    end,
    --move to next/previous buffer
    vim.keymap.set('n', '<S-l>', '<cmd>:BufferLineCycleNext<CR>'),
    vim.keymap.set('n', '<S-h>', '<cmd>:BufferLineCyclePrev<CR>'),
  },
}
