return {
  -- https://github.com/nomnivore/ollama.nvim/tree/main
  -- https://www.aloisdeniel.com/blog/how-to-install-a-local-llm-on-macos-in-10-minutes-and-use-it-in-neovim
  -- https://ollama.com/search
  {
    'nomnivore/ollama.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },

    -- All the user commands added by the plugin
    cmd = { 'Ollama', 'OllamaModel', 'OllamaServe', 'OllamaServeStop' },

    keys = {
      -- Sample keybind for prompt menu. Note that the <c-u> is important for selections to work properly.
      {
        '<leader>oo',
        ":<c-u>lua require('ollama').prompt()<cr>",
        desc = '[o]llama prompt',
        mode = { 'n', 'v' },
      },

      -- Sample keybind for direct prompting. Note that the <c-u> is important for selections to work properly.
      {
        '<leader>oG',
        ":<c-u>lua require('ollama').prompt('General')<cr>",
        desc = '[o]llama general question',
        mode = { 'n', 'v' },
      },
    },

    ---@type Ollama.Config
    opts = {
      -- your configuration overrides
      model = 'qwen2.5-coder:1.5b',
      -- url = 'http://127.0.0.1:11434',
      -- serve = {
      -- on_start = false,
      -- command = 'ollama',
      -- args = { 'serve' },
      -- stop_command = 'pkill',
      -- stop_args = { '-SIGTERM', 'ollama' },
      -- },
      -- View the actual default prompts in ./lua/ollama/prompts.lua
      prompts = {
        General = {
          prompt = '$input',
          input_label = '> ',
          model = 'codegemma:7b',
          action = 'display',
        },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
