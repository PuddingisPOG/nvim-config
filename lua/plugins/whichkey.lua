return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    plugins = {
      spelling = {
        enabled = false, -- This stops Which-Key from showing its own spell list
      },
    },
  },
}
