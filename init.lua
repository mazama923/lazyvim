-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Disable ssl only for curl with Treesitter because it causes problems with the company's proxies
require('nvim-treesitter.install').command_extra_args = {
  curl = { '--insecure' },
}
-- Disable mouse
vim.opt.mouse = ""
