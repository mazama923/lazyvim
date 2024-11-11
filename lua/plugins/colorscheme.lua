return {
  -- Installer le thème rose-pine
  { "rose-pine/neovim", name = "rose-pine" },

  -- Configurer LazyVim pour utiliser rose-pine comme colorschema
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
