return {
  -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#vacuum
  vim.filetype.add {
    pattern = {
      ['openapi.*.ya?ml'] = 'yaml.openapi',
      ['openapi.*.json'] = 'json.openapi',
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
