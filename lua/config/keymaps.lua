local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Splits
map("n", "<leader>sv", function()
  vim.cmd.vsplit()
end, { desc = "Vertical split" })

map("n", "<leader>sh", function()
  vim.cmd.split()
end, { desc = "Horizontal split" })

-- Terminal
map("n", "<leader>tv", function()
  vim.cmd.vsplit()
  vim.cmd.terminal()
  vim.cmd.startinsert()
end, { desc = "Terminal vertical split" })

map("n", "<leader>th", function()
  vim.cmd.split()
  vim.cmd.terminal()
  vim.cmd.startinsert()
end, { desc = "Terminal horizontal split" })

map("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

map("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
map("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
map("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
map("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)

-- Buffer
map("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Next buffer" })
map("n", "<leader>bp", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
map("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete buffer" })
map("n", "<leader>bb", "<cmd>buffers<CR>", { desc = "List buffers" })

-- Navigation
map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- LSP
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gr", vim.lsp.buf.references, { desc = "References" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover docs" })

map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
map("n", "gy", vim.lsp.buf.type_definition, { desc = "Type definition" })

map("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

map("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename symbol" })
map("n", "<leader>la", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "<leader>ld", vim.diagnostic.open_float, { desc = "Line diagnostics" })
map("n", "<leader>lf", function()
  require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Format file" })

-- Documentation
map("n", "<leader>ng", function()
  require("neogen").generate()
end, { desc = "Generate docstring" })
