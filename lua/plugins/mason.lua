return {
  {
    "mason-org/mason.nvim",
    lazy = false,
    opts = {},
    build = ":MasonUpdate",
  },

  {
    "mason-org/mason-lspconfig.nvim",
    lazy = false,
    dependencies = {
      "neovim/nvim-lspconfig",
      "mason-org/mason.nvim",
    },
    opts = {
      ensure_installed = {
        "lua_ls",
        "stylua",
        --"ty",
        "basedpyright",
        "ruff",
        "rust_analyzer",
        "tombi",
      },
    },
  },
}
