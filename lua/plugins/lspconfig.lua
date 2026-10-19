return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local servers = { "clangd", "pyright", "tinymist", "harper_ls", "css", "html", "lua_ls" }
    vim.lsp.config("tinymist", {
      settings = {
        preview = {
          invertColors = "never",
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
      },
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

    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
          },
        },
      },
    })
    vim.lsp.enable(servers)
  end,
}
