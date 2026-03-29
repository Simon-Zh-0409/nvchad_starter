require("nvchad.configs.lspconfig").defaults()

-- mason bin path (NvChad sets PATH = "skip" so we need to add it manually)
local mason_bin = vim.fn.stdpath "data" .. "/mason/bin"
if not vim.env.PATH:find(mason_bin, 1, true) then
  vim.env.PATH = mason_bin .. ":" .. vim.env.PATH
end

vim.lsp.config("basedpyright", {
  settings = {
    basedpyright = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "openFilesOnly",
        typeCheckingMode = "off",
      },
    },
  },
})

local servers = { "html", "cssls", "ts_ls", "clangd", "rust_analyzer", "basedpyright" }
vim.lsp.enable(servers)
