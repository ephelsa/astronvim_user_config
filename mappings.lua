return {
  n = {
    ["<leader>uH"] = {
      function()
        local inlayhints_avail, inlayhints = pcall(require, "lsp-inlayhints")
        if inlayhints_avail then inlayhints.toggle() end
      end,
      desc = "Toggle inlay hints",
    },
    ["[T"] = {
      function()
        local todo_avail, todo_comments = pcall(require, "todo-comments")
        if todo_avail then todo_comments.jump_prev() end
      end,
      desc = "Previous TODO comment",
    },
    ["]T"] = {
      function()
        local todo_avail, todo_comments = pcall(require, "todo-comments")
        if todo_avail then todo_comments.jump_next() end
      end,
      desc = "Next TODO comment",
    },
    ["<leader>fT"] = {
      "<cmd>TodoTelescope<cr>",
      desc = "Find TODOs in project",
    },
    ["fo"] = {
      "<cmd>foldopen<cr>",
      desc = "Open fold",
    },
    ["fq"] = {
      "<cmd>foldclose<cr>",
      desc = "Close fold",
    },
  },
}
