return {
  {
    'zbirenbaum/copilot.lua',
    event = 'InsertEnter',
    build = ':Copilot auth',
    config = function()
      require('copilot').setup {
        suggestion = { enabled = true },
        panel = { enabled = false },
      }
    end,
  },
}
