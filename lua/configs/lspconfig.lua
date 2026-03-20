require("nvchad.configs.lspconfig").defaults()

local servers = {"clangd", "pyright", "tinymist", "harper_ls", "css"}

vim.lsp.config("tinymist",{
  settings = {
    preview = {
      invertColors = "never",
      browsing = {
        -- args = {
        --   "--data-plane-host=127.0.0.1:0",
        --   "--invert-colors=never",
        --   -- "--open",
        -- },
      },
    },
    exportPdf = "never",
    formatterMode = "typstyle",
    semanticTokens = "enable",
  },
})

vim.lsp.config("clangd", {
  cmd = {
    "clangd",
    "--header-insertion=never",
  }
})

vim.lsp.config("harper_ls", {
  settings = {
    ["harper-ls"] = {
      linters = {
        SentenceCapitalization = false,
        SpellCheck = false,
      },
    },
  },
})

vim.lsp.enable(servers)
