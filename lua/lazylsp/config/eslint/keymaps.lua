return {
  vim.keymap.set('n', '<leader>ef', ':EslintFixAll<CR>', { silent = true, desc = '[e]slint [f]ix' }),
}
