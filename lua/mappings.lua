require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "enter command mode", nowait = true })
map("i", "jk", "<ESC>")

map("n", "<leader>q", "<cmd>q<CR>", { desc = "close current window" })
map("n", "<leader>l", "<cmd>set splitright<CR><cmd>vsplit<CR>", { desc = "vertical split" })
map("n", "<leader>j", "<cmd>set splitbelow<CR><cmd>split<CR>", { desc = "horizontal split" })
map("n", "<C-j>", "<C-W>j", { desc = "move to window below" })
map("n", "<C-k>", "<C-W>k", { desc = "move to window above" })
map("n", "<C-h>", "<C-W>h", { desc = "move to left window" })
map("n", "<C-l>", "<C-W>l", { desc = "move to right window" })
map("n", "<leader>t", "<cmd>Outline<CR>", { desc = "toggle outline" })
map("n", "<leader><CR>", "<cmd>nohl<CR>", { desc = "clear highlights" })
map("n", "<leader>te", "<cmd>Telescope<CR>", { desc = "open telescope" })
map("n", "<leader>rr", "<cmd>Telescope oldfiles<CR>", { desc = "recent files" })
map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "open lazygit" })
map("v", ">", ">gv", { desc = "indent and reselect" })

-- LSP navigation
map("n", "gr", vim.lsp.buf.references, { desc = "LSP references" })
map("n", "gi", function()
  local clients = vim.lsp.get_clients { bufnr = 0, method = "textDocument/implementation" }
  if #clients > 0 then
    vim.lsp.buf.implementation()
  else
    vim.notify("No LSP server supports implementation", vim.log.levels.WARN)
  end
end, { desc = "LSP implementation" })
map("n", "<leader>D", vim.lsp.buf.type_definition, { desc = "LSP type definition" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP code action" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP rename" })
map("n", "K", vim.lsp.buf.hover, { desc = "LSP hover" })
map("n", "<leader>ds", vim.lsp.buf.document_symbol, { desc = "LSP document symbols" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "prev diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "next diagnostic" })
map("n", "<leader>de", vim.diagnostic.open_float, { desc = "floating diagnostic" })

-- Telescope LSP integration (more powerful than raw LSP jump)
map("n", "<leader>gr", "<cmd>Telescope lsp_references<CR>", { desc = "telescope references" })
map("n", "<leader>gd", "<cmd>Telescope lsp_definitions<CR>", { desc = "telescope definitions" })
map("n", "<leader>gi", "<cmd>Telescope lsp_implementations<CR>", { desc = "telescope implementations" })
