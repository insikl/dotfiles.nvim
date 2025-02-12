-- https://github.com/folke/snacks.nvim
return {
  { -- Snacks: A collection of small utilities for Neovim
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,

    ---@type snacks.Config
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      -- plugin configs
      bigfile = { enabled = true },
      dashboard = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      notifier = {
        enabled = true,
        timeout = 5000,
      },
      quickfile = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
      styles = {
        notification = {
          wo = { wrap = true },
        },
      },
      scope = { enabled = true },
      picker = { enabled = true },
      lazygit = { enabled = true },
    },

    keys = {
      {
        '<leader>pf',
        function()
          Snacks.picker.files()
        end,
        desc = '[P]ick [F]iles',
      },
      {
        '<leader>pb',
        function()
          Snacks.picker.buffers()
        end,
        desc = '[P]ick [b]uffers',
      },
      {
        '<leader>st',
        function()
          Snacks.picker.todo_comments()
        end,
        desc = '[S]earch all [t]odo',
      },
      {
        '<leader>sT',
        function()
          Snacks.picker.todo_comments {
            keywords = { 'TODO', 'FIX', 'FIXME' },
          }
        end,
        desc = '[S]earch only [T]odo/Fix/Fixme',
      },
      {
        '<leader>n',
        function()
          Snacks.notifier.show_history()
        end,
        desc = 'Notification History',
      },
      {
        '<leader>bd',
        function()
          Snacks.bufdelete()
        end,
        desc = 'Delete Buffer',
      },
      {
        '<leader>cR',
        function()
          Snacks.rename.rename_file()
        end,
        desc = 'Rename File',
      },
      -- git picker
      {
        '<leader>gc',
        function()
          Snacks.picker.git_log()
        end,
        desc = 'Git Log',
      },
      {
        '<leader>gs',
        function()
          Snacks.picker.git_status()
        end,
        desc = 'Git Status',
      },
      -- git
      {
        '<leader>gB',
        function()
          Snacks.gitbrowse()
        end,
        desc = 'Git Browse Site Repo',
        mode = { 'n', 'v' },
      },
      {
        '<leader>gb',
        function()
          Snacks.git.blame_line()
        end,
        desc = 'Git Blame Line',
      },
      -- lazygit
      {
        '<leader>gf',
        function()
          Snacks.lazygit.log_file()
        end,
        desc = 'Lazygit Current File History',
      },
      {
        '<leader>gg',
        function()
          Snacks.lazygit()
        end,
        desc = 'Lazygit',
      },
      {
        '<leader>gl',
        function()
          Snacks.lazygit.log()
        end,
        desc = 'Lazygit Log (cwd)',
      },
      {
        '<leader>un',
        function()
          Snacks.notifier.hide()
        end,
        desc = 'Dismiss All Notifications',
      },
      {
        '<c-/>',
        function()
          Snacks.terminal()
        end,
        desc = 'Toggle Terminal',
      },
      {
        ']]',
        function()
          Snacks.words.jump(vim.v.count1)
        end,
        desc = 'Next Reference',
        mode = { 'n', 't' },
      },
      {
        '[[',
        function()
          Snacks.words.jump(-vim.v.count1)
        end,
        desc = 'Prev Reference',
        mode = { 'n', 't' },
      },
    },

    init = function()
      vim.api.nvim_create_autocmd('User', {
        pattern = 'VeryLazy',
        callback = function()
          -- Setup some globals for debugging (lazy-loaded)
          _G.dd = function(...)
            Snacks.debug.inspect(...)
          end
          _G.bt = function()
            Snacks.debug.backtrace()
          end
          vim.print = _G.dd -- Override print to use snacks for `:=` command

          -- Create some toggle mappings
          Snacks.toggle.option('spell', { name = 'Spelling' }):map '<leader>ts'
          Snacks.toggle.option('wrap', { name = 'Wrap' }):map '<leader>tw'
          Snacks.toggle.option('relativenumber', { name = 'Relative Number' }):map '<leader>tL'
          Snacks.toggle.diagnostics():map '<leader>td'
          Snacks.toggle.line_number():map '<leader>tl'
          Snacks.toggle.option('conceallevel', { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 }):map '<leader>tc'
          Snacks.toggle.treesitter():map '<leader>tT'
          Snacks.toggle.option('background', { off = 'light', on = 'dark', name = 'Dark Background' }):map '<leader>tb'
          Snacks.toggle.inlay_hints():map '<leader>th'
          Snacks.toggle.indent():map '<leader>tg'
          Snacks.toggle.dim():map '<leader>tD'
        end,
      })
    end,
  },
}
-- vim: set sw=2 ts=2 sts=2 et:
