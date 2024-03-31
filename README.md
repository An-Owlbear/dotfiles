# Dotfiles

This repository contains my personal dotfiles, mainly intended to be used on Arch Linux.

To use these the following must be installed:
- zsh
- zim
- neovim
- any nerd font

To install the dotfiles, run the following commands

```
git clone --bare https://github.com/An-Owlbear/dotfiles $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout
source .zshrc
```

The neovim configuration used in this repo is based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
