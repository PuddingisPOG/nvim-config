-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "rosepine",

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},

}

M.mason = {
  pkgs = {
    "cpptools",
    "clangd",
    "harper-ls",
    "debugpy",
    "pyright",
    "stylua",
    "lua-language-server",
    "tinymist",
  }
}

M.nvdash = { load_on_startup = true }

M.ui = {
  tabufline = {
    lazyload = false,
  },
  statusline = {
    theme = "default",
    order = { "mode", "file", "git", "%=", "macro", "cmd", "diagnostics", "lsp", "cwd", "cursor" },
    modules = {
      macro = function()
        local recording = vim.fn.reg_recording()
        if recording ~= "" then
          return "%#StText# recording @" .. recording .. " "
        end
        return ""
      end,
      cmd = function()
        return "%#StText# %S "  -- %S is the native showcmd statusline item
      end,
    },
  },
}


vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    -- Unset all terminal colors so Ghostty's colors are used
    for i = 0, 15 do
      vim.g['terminal_color_' .. i] = nil
    end
  end,
})

return M
