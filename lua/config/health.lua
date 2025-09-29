-- Configuration pour améliorer la santé de LazyVim
-- Ce fichier contient des optimisations pour éviter les problèmes courants

-- Optimisations de performance
vim.opt.updatetime = 200        -- Réduit le délai de mise à jour pour une meilleure réactivité
vim.opt.timeoutlen = 300        -- Réduit le timeout des keymaps pour une meilleure expérience
vim.opt.redrawtime = 1500       -- Augmente le temps de redraw pour les gros fichiers

-- Configuration de sécurité
vim.opt.modeline = false        -- Désactive modeline pour éviter les problèmes de sécurité
vim.opt.exrc = false           -- Désactive l'exécution automatique de .nvimrc locaux

-- Optimisations mémoire
vim.opt.hidden = true          -- Garde les buffers cachés au lieu de les fermer
vim.opt.history = 1000         -- Limite l'historique des commandes
vim.opt.undolevels = 1000      -- Limite les niveaux d'annulation

-- Configuration pour éviter les conflits de plugins
vim.g.loaded_perl_provider = 0     -- Désactive le provider Perl si non utilisé
vim.g.loaded_ruby_provider = 0     -- Désactive le provider Ruby si non utilisé
vim.g.loaded_node_provider = 0     -- Désactive le provider Node si non utilisé

-- Configuration spécifique pour CodeCompanion
vim.g.codecompanion_auto_save = true