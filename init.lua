-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Disable SSL verification for curl with Treesitter to bypass company proxy issues
vim.api.nvim_create_autocmd("User", {
  pattern = "nvim-treesitter",
  callback = function()
    require("nvim-treesitter.install").command_extra_args = {
      curl = { "--insecure" },
    }
  end,
})
