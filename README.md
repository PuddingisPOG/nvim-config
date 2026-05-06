Hey! This is a repo for the Neovim configuration that I use every day.

**Note: This repository is a mirror of the one on [Codeberg](https://codeberg.org/PuddingisPOG/nvim-config).**

# Install

Clone this repository:

`git clone https://codeberg.org/PuddingisPOG/nvim-config.git`

You then may or may not (I forgot) have to run `:Lazy sync` inside Neovim on startup so that all the plugins install.

Making sure that you have `npm` and `tree-sitter-cli` installed, run `:TSInstallAll` and `:MasonInstallAll` inside Neovim to get the syntax highlighting and LSPs that I use. 

If you optionally (but I strongly recommend) want [Telescope](https://github.com/nvim-telescope/telescope.nvim) to work, make sure you have `ripgrep` installed.

You may now delete the `.git` folder, so you can go ahead and make your own changes to the configuration :)

# Uninstall

Run:

```
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```

For more detail, especially if you're on windows or have installed Neovim from Flatpak check the [NvChad Docs](https://nvchad.com/docs/quickstart/install/).


# Credits

[NvChad](https://github.com/NvChad/NvChad), for giving me a starting point for this configuration.
