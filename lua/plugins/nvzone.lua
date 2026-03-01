return {
  {
    "nvzone/typr",
    event = "CmdLineEnter",
    dependencies = "nvzone/volt",
    opts = {},
    cmd = { "Typr", "TyprStats" },
  },
  {
  "nvzone/timerly",
  dependencies = 'nvzone/volt',
  cmd = "TimerlyToggle",
  opts = {} -- optional
  },
}
