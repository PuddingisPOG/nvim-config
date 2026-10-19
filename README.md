Hey! This is a repo for the Neovim configuration that I wrote and use every day.

**Note: The [GitHub repository](https://github.com/PuddingisPOG/nvim-config) is a mirror of the [Codeberg repository](https://codeberg.org/PuddingisPOG/nvim-config).**

**The legacy config based on [NvChad](https://github.com/NvChad/NvChad) is in the *[nvchad](https://codeberg.org/PuddingisPOG/nvim-config/tree/nvchad)* branch and will basically not be updated moving forward.**

# Dependencies

Make sure you have the following before installing otherwise this config will not work properly.

## Core Dependencies
- **Neovim `>= 0.11`** (required for native `vim.lsp.config` support)
- **`git`** (for `lazy.nvim`, `gitsigns.nvim`, and git pickers)
- **A [Nerd Font](https://www.nerdfonts.com/)** (for icons in the statusline, bufferline, file explorer, and completion menu)
- **`curl`**, **`tar`**, **`unzip`**, **`gzip`** (used by `mason.nvim`, `blink.cmp`, and `typst-preview.nvim` to download binaries)
- **Clipboard provider**: `wl-clipboard` (Wayland) or `xclip` / `xsel` (X11) for system clipboard integration
## Plugin Dependencies
- **`ripgrep` (`rg`)** is required for live grep in `snacks.nvim`
- **`fd`** *(optional but recommended)* is used for fast file finding in `snacks.nvim`
- **`diffutils` (`diff`)** is required by `undotree`
- **`lazygit`** *(optional)* is for the `snacks.nvim` LazyGit integration
## Language Runtimes (for Mason LSPs, Formatters & Debuggers)
`mason-tool-installer.nvim` automatically installs the configured LSP servers, formatters, and debug adapters, but requires these runtimes on your system:
- **Node.js** and  **`npm`** are required to install `pyright`, `html-lsp`, and `css-lsp`
- **Python 3 (`python3`, `pip`, `venv`)** are required to install `debugpy` and `clang-format`
- **`gcc` / `clang` & `gdb`** are required for C/C++ compilation and debugging with `cpptools`

# Installation

Clone this repository below and then run `nvim`; it's as simple as that `:D`. You will mostly need to run `:restart` once in nvim so that the line numbers show up properly.

`git clone https://codeberg.org/PuddingisPOG/nvim-config.git`

You may choose to delete the `.git` folder inside your config if you do not require version control to free up space. Or, feel free to use your own repo to track changes.

# Uninstall

Run:

```zsh
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```

and remove any unneeded depends.
