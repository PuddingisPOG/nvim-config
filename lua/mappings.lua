require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

--QoL

-- map("n","<C-d>","<C-d>zz")
-- map("n","<C-u>","<C-u>zz")
-- map("n", "n", "nzzzv")
-- map("n", "N", "nzzzv")

map("n", "<leader>+", "<C-w>+", { desc = "Resize make the window bigger vertically"})
map("n", "<leader>-", "<C-w>-", { desc = "Resize make the window smaller vertically"})
map("n", "<leader>>", "<C-w>>", { desc = "Resize make the window bigger horizontally by pressing shift and ="})
map("n", "<leader><", "<C-W><", { desc = "Resize make the window smaller horizontally by pressing shift and -"})
map("n", "<leader>nd", "<cmd> Noice dismiss <CR>", { desc = "Dismiss notifications" })

map("n","z=", "<cmd> Telescope spell_suggest <CR>", {desc = "Spelling suggestions"})
-- map("n","<leader>ds", "<cmd> Telescope diagnostics <CR>", {desc = "LSP diagnostics list"})

-- debugger
map("n","<leader>db","<cmd> DapToggleBreakpoint <CR>", { desc = "Debugger add a breakpoint to currect line"})
map("n","<leader>dr","<cmd> DapContinue <CR>", { desc = "Debugger stars or continues the debugger"})
map("n","<leader>do","<cmd> DapStepOver <CR>", { desc = "Debugger steps over current line"})
map("n","<leader>di","<cmd> DapStepInto <CR>", { desc = "Debugger steps into current line"})
map("n","<leader>dt","<cmd> DapTerminate <CR>", { desc = "Debugger stops the debugger"})
map("n","<leader>dl","<cmd> DapClearBreakpoints <CR>", { desc = "Debugger clears all breakpoints"})
-- map("n","<leader>dc","<cmd>lua require(\"dapui\").close()<CR>", { desc = "Debugger closes the debugger ui"})
-- map("n","<M-k>","<cmd> lua require(\"dapui\".eval()<CR>", {desc = "Debugger shows value of variable at cursor"})
map("n","<leader>dc",function() require("dapui").close() end, { desc = "Debugger closes the debugger ui"})
map("n","<M-k>",function() require("dapui").eval() end, {desc = "Debugger shows value of variable at cursor"})


--terminal

map({ "n", "t" }, "<a-i>", function()
    require("nvchad.term").toggle { pos = "float", id = "floatterm", float_opts={
        row = 0.35,
        col = 0.05,
        width = 0.9,
        height = 0.5
    }}
end, { desc = "terminal toggle floating term" })

map("n","<leader>ty", "<cmd> TypstPreview <CR>", {desc = "Typst gives a preview of the typst document"})

map("n","<leader>u", "<cmd> UndotreeToggle <CR>", {desc = "Toggles the UndoTree"})

vim.api.nvim_create_user_command("Timer", function()
  vim.o.showtabline = 0
  vim.o.laststatus = 0
  vim.wo.number = false
  vim.o.scl = "no"
  vim.o.cmdheight = 0
  vim.cmd "TimerlyToggle"
end, {})
