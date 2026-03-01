return {
  {
    "rcarriga/nvim-dap-ui",
    -- event = "VeryLazy",
    ft = "cpp",
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
    end
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
          require('mason-nvim-dap').default_setup(config)
        end,
        cppdbg = function(config)
          local my_cpp_configs = {
            {
              name = "Launch file",
              type = "cppdbg",
              request = "launch",
              program = function()
                -- Get the current file's name without the .cpp extension
                local executable = vim.fn.expand('%:p:r')
                -- Check if the executable exists
                if vim.fn.filereadable(executable) == 1 then
                  return executable
                else
                  vim.notify('Executable not found: ' .. executable, vim.log.levels.ERROR)
                  return nil
                end
              end,
              cwd = '${workspaceFolder}',
              stopAtEntry = true,
              setupCommands = { -- This allows vectors and other data structures(STL containers) to show the values inside them.
                {
                  text = '-enable-pretty-printing',
                  description = 'enable pretty printing',
                  ignoreFailures = false
                },
              },
            },
          }
          config.configurations = my_cpp_configs
          require('mason-nvim-dap').default_setup(config)
          local dap = require('dap')
          dap.configurations.cpp = my_cpp_configs
          dap.configurations.c = my_cpp_configs
        end,
      },
    },
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = function()
      local path = "/home/apurva/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
    end,
  },
}
