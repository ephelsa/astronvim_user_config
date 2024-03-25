return function()
  local open_cmd = '!open -a "Google Chrome"'
  local current_file = vim.fn.expand "%:p"
  print(string.format("Filetype: %s", vim.bo.filetype))

  if vim.bo.filetype == "markdown" then
    vim.api.nvim_command(string.format("%s %s", open_cmd, current_file))
  else
    print "Not a Markdown file"
  end
end
