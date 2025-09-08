return {
  -- CodeCompanion + core dependencies
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "ravitemer/codecompanion-history.nvim", -- Add history extension dependency
    },
    opts = {
      language = "French",
      extensions = {
        history = {
          enabled = true,
          opts = {
            keymap = "gh",
            save_chat_keymap = "sc",
            auto_save = true,
            expiration_days = 10,
            picker = "telescope",
            chat_filter = nil,
            picker_keymaps = {
              rename = { n = "r", i = "<M-r>" },
              delete = { n = "d", i = "<M-d>" },
              duplicate = { n = "<C-y>", i = "<C-y>" },
            },
            auto_generate_title = true,
            title_generation_opts = {
              adapter = nil,
              model = nil,
              refresh_every_n_prompts = 0,
              max_refreshes = 3,
              format_title = function(original_title)
                return original_title
              end,
            },
            continue_last_chat = false,
            delete_on_clearing_chat = false,
            dir_to_save = vim.fn.stdpath("data") .. "/codecompanion-history",
            enable_logging = false,
            summary = {
              create_summary_keymap = "gcs",
              browse_summaries_keymap = "gbs",
              generation_opts = {
                adapter = nil,
                model = nil,
                context_size = 90000,
                include_references = true,
                include_tool_outputs = true,
                system_prompt = nil,
                format_summary = nil,
              },
            },
            memory = {
              auto_create_memories_on_summary_generation = true,
              vectorcode_exe = "vectorcode",
              tool_opts = {
                default_num = 10,
              },
              notify = true,
              index_on_startup = false,
            },
          },
        },
      },
      strategies = {
        chat = {
          adapter = {
            name = "copilot",
            model = "claude-sonnet-4", -- Modèle mis à jour ici
          },
        },
      },
      adapters = {
        copilot = function()
          return require("codecompanion.adapters").extend("copilot", {
            schema = {
              model = {
                default = "claude-sonnet-4", -- modèle par défaut mis à jour ici aussi
              },
            },
          })
        end,
      },
    },
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
