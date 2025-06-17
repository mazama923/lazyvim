return {
  {
    "olimorris/codecompanion.nvim",
    opts = {},
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
  -- Render the markdown in the chat buffer
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown", "codecompanion" },
  },
  {
    "OXY2DEV/markview.nvim",
    lazy = false,
    opts = {
      preview = {
        filetypes = { "markdown", "codecompanion" },
        ignore_buftypes = {},
      },
    },
  },
  -- Diff when using the inline assistant
  {
    "echasnovski/mini.diff",
    config = function()
      local diff = require("mini.diff")
      diff.setup({
        -- Disabled by default
        source = diff.gen_source.none(),
      })
    end,
  },
  -- Copy images from your system clipboard into a chat buffer
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
  },
}
