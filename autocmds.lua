local cmd = vim.api.nvim_create_user_command

-- Command to open Markdown Previews in Google Chrome
cmd("MarkdownPreview", require "user.commands.markdown-preview", { desc = "Preview Markdown files in Google Chrome" })

--
cmd("Pandoc", require "user.commands.pandoc-conversor", {
  desc = "Convert files using pandoc.\n\n--- Arguments\n- ext=: Add the extension of the file.\n- (optional) content-table: Include table of context at the top of the PDF file.\n- (optional) open: Open the output file.",
  nargs = "*",
})
