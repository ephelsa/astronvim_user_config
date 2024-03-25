return function()
  require("onenord").setup {
    styles = {
      keywords = "bold,italic",
      functions = "italic",
    },
    disable = {
      background = true,
      float_background = true,
    },
  }
end
