local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "deno_fmt" },
    typescript = { "deno_fmt" },
    javascriptreact = { "deno_fmt" },
    typescriptreact = { "deno_fmt" },
    html = { "prettier" },
    markdown = { "prettier" },
    css = { "prettier" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    rust = { "rustfmt" },
    python = { "black" },
  },

  -- format_on_save = {
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
