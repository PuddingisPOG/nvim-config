return {
  'chomosuke/typst-preview.nvim',
  ft = "typst",
  version = '1.4.0',
  opts = {
    dependencies_bin = { ['tinymist'] = 'tinymist' },
  }, -- lazy.nvim will implicitly calls `setup {}`
}
