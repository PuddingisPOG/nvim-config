function _G.get_oil_winbar()
  local bufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid)
  local dir = require("oil").get_current_dir(bufnr)
  if dir then
    return vim.fn.fnamemodify(dir, ":~")
  else
    -- If there is no current directory (e.g. over ssh), just show the buffer name
    return vim.api.nvim_buf_get_name(0)
  end
end

return {
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      win_options = {
        winbar = "%!v:lua.get_oil_winbar()",
      },
    },
    dependencies = { "nvim-tree/nvim-web-devicons", "malewicz1337/oil-git.nvim", "JezerM/oil-lsp-diagnostics.nvim" },
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
  {
    "malewicz1337/oil-git.nvim",
    dependencies = { "stevearc/oil.nvim" },
    opts = {
      show_file_highlights = true,
      show_directory_highlights = false,
      show_ignored_files = true,
    },
  },
  {
    "JezerM/oil-lsp-diagnostics.nvim",
    dependencies = { "stevearc/oil.nvim" },
    opts = {},
  },
}
