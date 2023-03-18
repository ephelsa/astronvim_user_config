return function()
  local wilder_avail, wilder = pcall(require, "wilder")

  if wilder_avail then
    wilder.setup {
      modes = { ":", "/", "?" },
    }
  end
end
