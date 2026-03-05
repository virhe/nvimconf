-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Docstring
vim.keymap.set("n", "<leader>ng", function()
  require("neogen").generate()
end, { desc = "Neogen generate annotation" })
