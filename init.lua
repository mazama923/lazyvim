-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Always use --insecure for curl in Neovim
vim.env.CURL_SSL_NO_VERIFY = "1"
