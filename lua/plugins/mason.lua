return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = {
      {
        "mason-org/mason.nvim",
        "mason-org/mason-lspconfig.nvim",
      },
    },
    opts = {
      ensure_installed = {
        --LSP
        "clangd",
        "harper_ls",
        "pyright",
        "tinymist",
        "cssls",
        "html",
        "lua_ls",
        --Formatter
        "clang-format",
        "stylua",
        --DAP
        "cpptools",
        "debugpy",
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "mason-org/mason.nvim",
    event = "BufEnter",
    opts = function()
      return {
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      }
    end,
  },
}
