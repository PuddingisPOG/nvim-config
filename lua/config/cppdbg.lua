return {
  {
    name = "Launch current file",
    type = "cppdbg",
    request = "launch",
    program = "${fileBasenameNoExtension}",
    cwd = "${workspaceFolder}",
    stopAtEntry = true,
    setupCommands = { -- This allows vectors and other data structures(STL containers) to show the values inside them.
      {
        text = "-enable-pretty-printing",
        description = "enable pretty printing",
        ignoreFailures = false,
      },
    },
  },
  {
    name = "Choose a file\n",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopAtEntry = true,
    setupCommands = { -- This allows vectors and other data structures(STL containers) to show the values inside them.
      {
        text = "-enable-pretty-printing",
        description = "enable pretty printing",
        ignoreFailures = false,
      },
    },
  },
}
