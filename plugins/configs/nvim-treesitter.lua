return function()
  require("nvim-treesitter.configs").setup {
    ensure_installed = { "hcl", "terraform" },
    auto_install = true,
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  }
end
