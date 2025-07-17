return {
  -- CodeCompanion + core dependencies
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {},
    event = "VeryLazy", -- Load only when needed
  },

  -- Render markdown in codecompanion and markdown buffers
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown", "codecompanion" }, -- Only load for these filetypes
  },

  -- Markview: markdown/codecompanion live preview
  {
    "OXY2DEV/markview.nvim",
    opts = {
      preview = {
        filetypes = { "markdown", "codecompanion" },
      },
    },
    ft = { "markdown", "codecompanion" }, -- Only load for these filetypes
  },

  -- Mini.diff for in-line diff (recommended: lazy load on command)
  {
    "echasnovski/mini.diff",
    config = function()
      require("mini.diff").setup({
        source = require("mini.diff").gen_source.none(),
      })
    end,
    cmd = { "DiffviewOpen", "DiffviewClose" }, -- Load only on diff commands
  },

  -- Clipboard image pasting into chat buffer
  {
    "HakonHarnes/img-clip.nvim",
    opts = {
      filetypes = {
        codecompanion = {
          prompt_for_file_name = false,
          template = "[Image]($FILE_PATH)",
          use_absolute_path = true,
        },
      },
    },
    ft = "codecompanion", -- Load only for codecompanion filetype
  },

  -- Completion with codecompanion-specific sources
  {
    "saghen/blink.cmp",
    opts = {
      sources = {
        per_filetype = {
          codecompanion = { "codecompanion" },
        },
      },
    },
    event = "InsertEnter", -- Load before editing
  },
}
