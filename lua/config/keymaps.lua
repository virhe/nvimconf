-- Buffer
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete buffer" })

vim.keymap.set("n", "<leader>bb", "<cmd>enew<cr>", { desc = "New buffer" })
vim.keymap.set("n", "<leader>bs", "<cmd>new<cr>", { desc = "New buffer (split)" })
vim.keymap.set("n", "<leader>bv", "<cmd>vnew<cr>", { desc = "New buffer (vsplit)" })

-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help tags" })

-- Diagnostics
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Diagnostics" })
vim.keymap.set("n", "<leader>dn", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Next diagnostic" })
vim.keymap.set("n", "<leader>dp", function()
  vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Prev diagnostic" })

-- Terminal
vim.keymap.set("n", "<leader>tt", function()
  vim.cmd("split | terminal")
end, { desc = "Terminal (split)" })

vim.keymap.set("n", "<leader>tv", function()
  vim.cmd("vsplit | terminal")
end, { desc = "Terminal (vsplit)" })

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

-- Oil
vim.keymap.set("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory" })
