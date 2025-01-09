-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Auto Save
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = { "*" },
  command = "silent! wall",
  nested = true,
})

-- Disable SSL verification for curl with Treesitter to bypass company proxy issues
vim.api.nvim_create_autocmd("User", {
  pattern = "nvim-treesitter",
  callback = function()
    require("nvim-treesitter.install").command_extra_args = {
      curl = { "--insecure" },
    }
  end,
}
