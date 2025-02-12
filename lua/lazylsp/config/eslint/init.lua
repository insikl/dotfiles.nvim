-- Opionated ESLint configuration for Vue projects
-- https://github.com/antfu/eslint-config
return {
  {
    filetypes = {
      'javascript',
      'javascriptreact',
      'javascript.jsx',
      'typescript',
      'typescriptreact',
      'typescript.tsx',
      'vue',
      'html',
      'markdown',
      'json',
      'jsonc',
      'yaml',
      'toml',
      'xml',
      'gql',
      'graphql',
      'astro',
      'svelte',
      'css',
      'less',
      'scss',
      'pcss',
      'postcss',
    },
    settings = {
      -- Silent the stylistic rules in you IDE, but still auto fix them
      rulesCustomizations = {
        { rule = 'style/*', severity = 'off', fixable = true },
        { rule = 'format/*', severity = 'off', fixable = true },
        { rule = '*-indent', severity = 'off', fixable = true },
        { rule = '*-spacing', severity = 'off', fixable = true },
        { rule = '*-spaces', severity = 'off', fixable = true },
        { rule = '*-order', severity = 'off', fixable = true },
        { rule = '*-dangle', severity = 'off', fixable = true },
        { rule = '*-newline', severity = 'off', fixable = true },
        { rule = '*quotes', severity = 'off', fixable = true },
        { rule = '*semi', severity = 'off', fixable = true },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
