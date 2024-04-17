return function()
  require("kanagawa").setup {
    transparent = true,
    dimInactive = true,
    undercurl = true,
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = false, bold = true },
    statementStyle = { bold = true },
    typeStyle = { bold = true },
  }
end
