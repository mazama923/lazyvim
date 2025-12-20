-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ============================================================================
-- Ansible keymaps
-- ============================================================================
-- Encrypt sensitive data using Ansible Vault
vim.keymap.set("n", "<Leader>av", ":AnsibleVault<CR>", { noremap = true, silent = true, desc = "Ansible Vault" })

-- Decrypt Ansible Vault encrypted files
vim.keymap.set("n", "<Leader>au", ":AnsibleUnvault<CR>", { noremap = true, silent = true, desc = "Ansible Unveault" })

-- ============================================================================
-- CodeCompanion keymaps
-- ============================================================================
-- Open CodeCompanion chat interface for AI-assisted coding
-- vim.keymap.set("n", "<Leader>ac", ":CodeCompanionChat<CR>", { noremap = true, silent = true, desc = "CodeCompanion Chat" })

-- ============================================================================
-- Navigation keymaps (Insert and Normal modes)
-- ============================================================================
-- Move cursor to end of line in Insert mode (emacs-style binding)
vim.keymap.set('i', '<C-e>', '<End>', { desc = "End of line" })

-- Move cursor to start of line in Insert mode (emacs-style binding)
vim.keymap.set('i', '<C-a>', '<Home>', { desc = "Start of line" })

-- Move cursor to end of line in Normal mode (emacs-style binding)
vim.keymap.set('n', '<C-e>', '<End>', { desc = "End of line" })

-- Move cursor to start of line in Normal mode (emacs-style binding)
vim.keymap.set('n', '<C-a>', '<Home>', { desc = "Start of line" })
