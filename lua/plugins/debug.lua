local cppdbg = require("config.cppdbg")
return {
  {
    "rcarriga/nvim-dap-ui",
    ft = { "cpp", "py" },
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      require("dapui").setup()
      local dap, dapui = require("dap"), require("dapui")
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- event = "VeryLazy",
    ft = "cpp",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      ensure_installed = {
        "cpptools",
      },
      handlers = {
        function(config)
          require("mason-nvim-dap").default_setup(config)
        end,
        cppdbg = function(config)
          config.configurations = cppdbg
          require("mason-nvim-dap").default_setup(config)
          local dap = require("dap")
          dap.configurations.cpp = cppdbg
          dap.configurations.c = cppdbg
        end,
      },
    },
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "py",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = function()
      local path = "/home/apurva/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
    end,
  },
}
