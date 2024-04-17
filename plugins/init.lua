return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = "BufRead",
    config = require "user.plugins.configs.nvim-treesitter",
  },
  {
    "ur4ltz/surround.nvim",
    event = "BufRead",
    config = require "user.plugins.configs.surround-nvim",
  },
  {
    -- Theme
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    -- Theme
    "rmehri01/onenord.nvim",
    config = require "user.plugins.configs.onenord",
  },
  {
    -- Theme
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = require "user.plugins.configs.poimandres",
  },
  {
    -- Theme
    "EdenEast/nightfox.nvim",
    config = require "user.plugins.configs.nightfox",
  },
  {
    -- Theme
    "rebelot/kanagawa.nvim",
    branch = "master",
    config = require "user.plugins.configs.kanagawa",
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "InsertEnter",
    config = require "user.plugins.configs.lsp-signature",
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      enable_git_status = true,
      enable_diagnostics = true,
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            "node_modules",
          },
        },
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      return {
        defaults = {
          file_ignore_patterns = {
            "node_modules",
          },
        },
      }
    end,
  },
  {
    "lvimuser/lsp-inlayhints.nvim",
    branch = "main",
    module = "lsp-inlayhints",
    config = require "user.plugins.configs.lsp-inlayhints",
  },
  {
    "simrat39/rust-tools.nvim",
    branch = "master",
    config = require "user.plugins.configs.rust-tools",
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    version = "v1.0.0",
    config = require "user.plugins.configs.todo-comments",
  },
  {
    "gelguy/wilder.nvim",
    branch = "master",
    event = "CmdlineEnter",
    config = require "user.plugins.configs.wilder",
  },
  {
    "nvim-ts-autotag",
  },
  {
    "L3MON4D3/LuaSnip",
    version = "v1.2.1",
    config = function(plugin, opts)
      require "plugins.configs.luasnip" (plugin, opts)                                       -- include the default astronvim config that calls the setup call
      require("luasnip.loaders.from_vscode").lazy_load { paths = { "./lua/user/snippets" } } -- load snippets paths
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
}
