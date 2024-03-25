local args_processor = function(args)
  local regex_args = "([^%s]*)%s"
  local result_params = ""
  local extension = ""
  local extras = ""

  for w in (args .. " "):gmatch(regex_args) do
    if w == "content-table" then
      result_params = result_params .. " --table-of-content"
    elseif string.match(w, "ext=") then
      extension = w:sub(5, w:len())
    end
  end

  local filename = vim.fn.expand "%:r"
  local output_file = ("%s.%s"):format(filename, extension)

  for w in (args .. " "):gmatch(regex_args) do
    if w == "open" then extras = extras .. " && open " .. output_file end
  end

  return { result_params, output_file, extras }
end

return function(opts)
  local parse_cmd = "!pandoc -V colorlinks -V urlcolor=NavyBlue"
  local current_file = vim.fn.expand "%:p"
  local args = args_processor(opts.args)
  local options = args[1]
  local output_file = args[2]
  local extras = args[3]

  vim.api.nvim_command(string.format("%s %s %s -s -o %s %s", parse_cmd, options, current_file, output_file, extras))
end
