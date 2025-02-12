-- WIP: Perl LSP
-- NOTE: Need to work in carton/docker/etc so special consideration required
--
-- Perl LSP Config options
--  - https://github.com/bscan/PerlNavigator?tab=readme-ov-file#neovim
--
-- Note from Neovim on running LSP in containers
--  - https://github.com/neovim/nvim-lspconfig/wiki/Running-language-servers-in-containers
return {
  {
    settings = {
      perlnavigator = {
        -- example using docker
        perlPath = 'docker exec --interactive container perl 2>/dev/null',
        enableWarnings = true,
        perltidyProfile = '',
        perlcriticProfile = '',
        perlcriticEnabled = true,
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
