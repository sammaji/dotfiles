# dotfiles

Run the `install.sh` to install some tools, like zsh, fzf, etc. Only works on arch.

```bash
bash <(curl -s https://raw.githubusercontent.com/sammaji/dotfiles/main/preinstall.sh)
```

Next, clone the repo and use stow to create symlinks to your home directory.

```bash
git clone https://github.com/sammaji/dotfiles ~/dotfiles/
cd ~ && stow ~/dotfiles/
```

This does not include my neovim configuration. Here's my neovim config: [boomer.nvim](https://github.com/sammaji/boomer.nvim)
