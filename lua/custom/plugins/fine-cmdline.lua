return {
  {
    'vonheikemen/fine-cmdline.nvim',
    dependencies = {
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require('fine-cmdline').setup {
        cmdline = {
          prompt = ':',
          enable_keymaps = true,
          smart_history = true,
          -- Add more options if needed
        },
        popup = {
          position = {
            row = '40%',
            col = '50%',
          },
          size = {
            width = '60%',
          },
          border = {
            style = 'rounded',
            top_align = 'center',
          },
          win_options = {
            winhighlight = 'Normal:Normal,FloatBorder:FloatBorder',
          },
        },
      }
    end,
    vim.keymap.set('n', ':', '<cmd>FineCmdline<CR>'),
  },
}
