require "nvchad.options"

-- add yours here!

local o = vim.o
-- o.ignorecase = true
o.relativenumber = true
o.incsearch = true
o.hlsearch = false
o.spell = true
o.wrap = true
o.linebreak = true
o.cursorlineopt = "both" -- to enable cursorline!

--comment these lines:
o.cmdheight = 1
o.showcmd = true
-- and un comment these lines for noice.
-- o.cmdheight = 0
-- o.showcmdloc = "statusline"
