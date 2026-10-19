local map = vim.keymap.set

map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

-- Window Related Commands:

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })
map("n", "<leader>+", "<C-w>+", { desc = "Resize make the window bigger vertically" })
map("n", "<leader>-", "<C-w>-", { desc = "Resize make the window smaller vertically" })
map("n", "<leader>>", "<C-w>>", { desc = "Resize make the window bigger horizontally by pressing shift and =" })
map("n", "<leader><", "<C-W><", { desc = "Resize make the window smaller horizontally by pressing shift and -" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

map({ "n", "x" }, "<leader>fm", function()
  require("conform").format({ lsp_fallback = true })
end, { desc = "general format file" })

-- global lsp mappings
map("n", "<leader>ds", vim.diagnostic.setloclist, { desc = "LSP diagnostic loclist" })

-- Buffer Naviagtion

map("n", "<leader>n", "<cmd> bnext <CR>", { desc = "tab goto next" })
map("n", "<leader>p", "<cmd> bprev <CR>", { desc = "tab goto prev" })
map("n", "<leader>x", "<cmd> bdelete <CR>", { desc = "buffer close" })
map("n", "<leader>b", "<cmd> enew <CR>", { desc = "buffer close" })

-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- Oil
map("n", "<leader>e", "<cmd>Oil<CR>", { desc = "nvimtree focus window" })

-- telescope
-- map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
-- map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
-- map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
-- map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
-- map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
-- map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
-- map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
-- map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
-- map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })

-- map(
--   "n",
--   "<leader>fa",
--   "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
--   { desc = "telescope find all files" }
-- )
--
-- map("n", "z=", "<cmd> Telescope spell_suggest <CR>", { desc = "Spelling suggestions" })

-- Snacks.pickers

map("n", "<leader>ff", function()
  Snacks.picker.files()
end, { desc = "Find Config files" })

map("n", "<leader>fb", function()
  Snacks.picker.buffers()
end, { desc = "Find Buffers" })

map("n", "<leader>fc", function()
  Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
end, { desc = "Find files" })

map("n", "<leader>fa", function()
  Snacks.picker.files({ hidden = true })
end, { desc = "Find ALL files" })

map("n", "<leader>fr", function()
  Snacks.picker.recent()
end, { desc = "Find Recent" })

map("n", "<leader>fg", function()
  Snacks.picker.git_files()
end, { desc = "Find Git files" })

map("n", "<leader>sg", function()
  Snacks.picker.grep()
end, { desc = "Grep" })

map("n", "<leader>sb", function()
  Snacks.picker.lines()
end, { desc = "Grep Buffer Lines" })

map("n", "<leader>sm", function()
  Snacks.picker.marks()
end, { desc = "Search Marks" })

map("n", "th", function()
  Snacks.picker.colorschemes()
end, { desc = "Colorschemes" })

map("n", "z=", function()
  Snacks.picker.spelling({
    layout = { preset = "select" },
  })
end, { desc = "Spelling suggestions" })

map("n", "<leader>lg", function()
  Snacks.lazygit()
end, { desc = "Lazygit" })

-- map("n","<leader>ds", "<cmd> Telescope diagnostics <CR>", {desc = "LSP diagnostics list"})

-- terminal
map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

map({ "n", "t" }, "<A-h>", function()
  Snacks.terminal()
end, { desc = "terminal toggle horizontal term" })

map({ "n", "t" }, "<A-i>", function()
  Snacks.terminal(vim.o.shell, {
    win = {
      border = "rounded",
      width = 0.8,
      height = 0.8,
    },
  })
end, { desc = "terminal toggle floating term" })
-- map({ "n", "t" }, "<A-i>", "<cmd>FloatermToggle<CR>", { desc = "terminal toggle floating term" })

-- whichkey
map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "whichkey all keymaps" })

map("n", "<leader>wk", function()
  vim.cmd("WhichKey " .. vim.fn.input("WhichKey: "))
end, { desc = "whichkey query lookup" })

--QoL (Disabled for now due to weird interactions with WhichKey)

-- map("n","<C-d>","<C-d>zz")
-- map("n","<C-u>","<C-u>zz")
-- map("n", "n", "nzzzv")
-- map("n", "N", "nzzzv")

-- Debugger
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Debugger add a breakpoint to currect line" })
map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Debugger stars or continues the debugger" })
map("n", "<leader>do", "<cmd> DapStepOver <CR>", { desc = "Debugger steps over current line" })
map("n", "<leader>di", "<cmd> DapStepInto <CR>", { desc = "Debugger steps into current line" })
map("n", "<leader>dt", "<cmd> DapTerminate <CR>", { desc = "Debugger stops the debugger" })
map("n", "<leader>dl", "<cmd> DapClearBreakpoints <CR>", { desc = "Debugger clears all breakpoints" })
map("n", "<leader>dc", function()
  require("dapui").close()
end, { desc = "Debugger closes the debugger ui" })
map("n", "<A-k>", function()
  require("dapui").eval()
end, { desc = "Debugger shows value of variable at cursor" })

--Typst Preview

map("n", "<leader>ty", "<cmd> TypstPreview <CR>", { desc = "Typst gives a preview of the typst document" })

map("n", "<leader>u", "<cmd> UndotreeToggle <CR>", { desc = "Toggles the UndoTree" })

map("n", "<leader>e", "<cmd> Oil <CR>", { desc = "Opens Oil" })

--Html Preview

map("n", "<leader>hs", "<cmd> LivePreview start <CR>", { desc = "Html start preview" })
map("n", "<leader>ht", "<cmd> LivePreview close <CR>", { desc = "Html stop preview" })
map("n", "<leader>hp", "<cmd> LivePreview pick <CR>", { desc = "Html pick preview" })
