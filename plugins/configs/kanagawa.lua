return function()
  require("kanagawa").setup {
    transparent = true,
    dimInactive = true,
    undercurl = true,
    functionStyle = { italic = true },
    commentStyle = { italic = true },
    keywordStyle = { italic = true },
    statementStyle = { italic = true },
    typeStyle = { bold = true },
  }
end
