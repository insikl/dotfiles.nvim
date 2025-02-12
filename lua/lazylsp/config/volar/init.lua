return {
  {
    -- add filetypes for typescript, javascript and vue
    filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
    init_options = {
      vue = {
        -- disable hybrid mode which requires disabling `ts_ls`
        -- this is to handle and manage memory usage.
        hybridMode = false,
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
