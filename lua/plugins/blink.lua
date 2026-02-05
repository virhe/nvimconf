return {
  {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },
    event = "InsertEnter",
    version = "1.*",
    opts = {
      keymap = {
        preset = "default",
        ["<CR>"] = { "select_accept_and_enter", "fallback" },
      },
      completion = { documentation = { auto_show = false } },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      fuzzy = { implementation = "prefer_rust_with_warning" }
    },
    opts_extend = { "sources.default" }
  },
}
