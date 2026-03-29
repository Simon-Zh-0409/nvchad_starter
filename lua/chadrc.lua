-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "ashes",
  theme_toggle = { "ashes", "one_light" },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },

  hl_add = {
    NvimTreeOpenedFolderName = { fg = "green", bold = true },
  },
}

M.mason = {
  pkgs = {
    -- lsp servers
    "lua-language-server",
    "html-lsp",
    "css-lsp",
    "typescript-language-server",
    "clangd",
    "rust-analyzer",
    "basedpyright",
    -- formatters
    "stylua",
    "deno",
    "prettier",
    "clang-format",
    "black",
  },
}

return M
