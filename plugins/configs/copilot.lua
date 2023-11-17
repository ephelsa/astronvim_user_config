return function()
  require("copilot").setup {
    panel = {
      layout = {
        position = "top",
      },
    },
    filetypes = {
      yaml = true,
      markdown = true,
      gitcommit = true,
      hgcommit = true,
      typescript = true,
      rust = true,
      lua = true,
    },
    suggestion = {
      auto_trigger = true,
      keymap = {
        next = "<M-j>",
        prev = "<M-k>",
        dismiss = "<M-h>",
      },
    },
  }
end
