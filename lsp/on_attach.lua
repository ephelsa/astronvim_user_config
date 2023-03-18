local M = {}

-- Setup for inlay hint
function M.inlay_hint(client, bufnr)
  if client.server_capabilities.inlayHintProvider then
    local inlayhints_avail, inlayhints = pcall(require, "lsp-inlayhints")
    if inlayhints_avail then inlayhints.on_attach(client, bufnr) end
  end
end

-- Setup for rust-tools
function M.rust_tools(_, bufnr)
  local rt_avail, rt = pcall(require, "rust-tools")

  if rt_avail then
    -- Hover actions
    vim.keymap.set("n", "<C-space>1", rt.hover_actions.hover_actions, {
      buffer = bufnr,
      desc = "Rust: Hover actions",
    })

    -- Code action groups
    vim.keymap.set("n", "<C-space>2", rt.code_action_group.code_action_group, {
      buffer = bufnr,
      desc = "Rust: Code action groups",
    })
  end
end

return function(client, bufnr)
  M.inlay_hint(client, bufnr)
  M.rust_tools(client, bufnr)
end
