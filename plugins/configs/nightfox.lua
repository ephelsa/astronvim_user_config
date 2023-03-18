return function()
  require("nightfox").setup {
    options = {
      transparent = false,
      terminal_colors = true,
      styles = {
        keywords = "bold",
        types = "italic,bold",
        functions = "italic,bold",
        constants = "bold",
        conditions = "italic",
      },
      inverse = {
        match_paren = true,
        search = true,
        visual = true,
      },
    },
  }
end
