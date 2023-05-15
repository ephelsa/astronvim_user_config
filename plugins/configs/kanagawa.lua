return function()
  local kanagawa = require "kanagawa"

  kanagawa.setup {
    undercurl = true,
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = false, bold = true },
    statementStyle = { bold = true },
    typeStyle = { bold = true },
  }
end
