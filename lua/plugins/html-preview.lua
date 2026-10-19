return {
  "brianhuster/live-preview.nvim",
  dependencies = {
    "folke/snacks.nvim",
  },
  config = function()
    require("livepreview.config").set({
      port = 5500,
      browser = "default",
      dynamic_root = false,
      sync_scroll = true,
      picker = "snacks.picker",
      address = "127.0.0.1",
    })
  end,
}
