return function()
  require("rust-tools").setup {
    tools = {
      inline_hints = {
        auto = false,
      },
    },
  }
end
