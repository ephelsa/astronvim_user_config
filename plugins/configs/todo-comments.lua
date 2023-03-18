return function()
  local get_icon = require("astronvim.utils").get_icon

  require("todo-comments").setup {
    signs = true,
    keywords = {
      FIX = {
        icon = get_icon "Fix",
        color = "#db2a07",
        alt = { "FIXME", "FIXIT", "ISSUE" },
      },
      TODO = {
        icon = get_icon "Todo",
        color = "#03adfc",
      },
      HACK = {
        icon = get_icon "Hack",
        color = "#9c5102",
      },
      WARNING = {
        icon = get_icon "Warning",
        color = "#ffc400",
        alt = { "WARNING", "WARN", "ALERT" },
      },
      PERF = {
        icon = get_icon "Performance",
        color = "#8c20ba",
        alt = { "PERFORMANCE", "PERF", "OPTIMIZE" },
      },
      NOTE = {
        icon = get_icon "Note",
        color = "#fff1cc",
        alt = { "NOTE", "NB", "N.B" },
      },
      TEST = {
        icon = get_icon "Test",
        color = "#19bf00",
        alt = { "TESTING", "TEST", "PASSED", "FAILED" },
      },
    },

    gui_style = {
      fg = "NONE",
      bg = "BOLD",
    },
  }
end
