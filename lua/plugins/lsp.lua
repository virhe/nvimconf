return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      vim.lsp.enable({
        "lua_ls",
        "ty",
        "ruff"
      })
    end,
  },
}
