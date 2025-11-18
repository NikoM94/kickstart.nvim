return {
  {
    'zbirenbaum/copilot.lua',
    dependencies = {
      'copilotlsp-nvim/copilot-lsp',
    },
    event = 'InsertEnter',
    build = ':Copilot auth',
    config = function()
      require('copilot').setup {
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = '<leader><Tab>',
            next = '<leader><§>',
            prev = '<leader><½>',
          },
        },
        panel = { enabled = false },
      }
    end,
  },
}
