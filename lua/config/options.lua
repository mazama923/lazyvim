-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.ansible_vault_password_file = "~/.vault_password"
vim.g.ansible_vault_no_unquote = 1
vim.o.background = "light" -- or "dark"
-- Copy & paste with mouse
vim.g.clipboard = {
  name = 'myClipboard',
  copy = {
    ['+'] = 'xclip -selection clipboard',
    ['*'] = 'xclip -selection clipboard',
  },
  paste = {
    ['+'] = 'xclip -selection clipboard -o',
    ['*'] = 'xclip -selection clipboard -o',
  },
}
