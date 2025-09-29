-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Ansible keymaps
vim.keymap.set("n", "<Leader>av", ":AnsibleVault<CR>", { noremap = true, silent = true, desc = "Ansible Vault" })
vim.keymap.set("n", "<Leader>au", ":AnsibleUnvault<CR>", { noremap = true, silent = true, desc = "Ansible Unveault" })

-- CodeCompanion keymaps
vim.keymap.set("n", "<Leader>ac", ":CodeCompanionChat<CR>", { noremap = true, silent = true, desc = "CodeCompanion Chat" })

vim.keymap.set('i', '<C-e>', '<End>', { desc = "End of ligne" })
vim.keymap.set('i', '<C-a>', '<Home>', { desc = "Start of ligne" })
