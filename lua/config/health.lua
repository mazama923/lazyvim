-- Configuration to improve LazyVim's health
-- This file contains optimizations to avoid common issues

-- Performance optimizations
vim.opt.updatetime = 200        -- Reduces update delay for better responsiveness
vim.opt.timeoutlen = 300        -- Reduces keymap timeout for a better experience
vim.opt.redrawtime = 1500       -- Increases redraw time for large files

-- Security configuration
vim.opt.modeline = false        -- Disables modeline to avoid security issues
vim.opt.exrc = false           -- Disables automatic execution of local .nvimrc files

-- Memory optimizations
vim.opt.hidden = true          -- Keeps buffers hidden instead of closing them
vim.opt.history = 1000         -- Limits the command history
vim.opt.undolevels = 1000      -- Limits the undo levels

-- Configuration to avoid plugin conflicts
vim.g.loaded_perl_provider = 0     -- Disables Perl provider if unused
vim.g.loaded_ruby_provider = 0     -- Disables Ruby provider if unused
vim.g.loaded_node_provider = 0     -- Disables Node provider if unused

-- Specific configuration for CodeCompanion
vim.g.codecompanion_auto_save = true
