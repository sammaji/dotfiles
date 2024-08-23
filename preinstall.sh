function exists() {
  pacman -Qi "$1" > /dev/null 2>&1
  [[ $? -eq 0 ]]
}

sudo pacman -Syu
sudo pacman -S zsh git fzf fd ripgrep \
    kitty stow

# install nvm
if exists "nvm"; then
    echo "Installing nvm..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
fi

# install rustup
if exists "rustup"; thenA
    echo "Installing rustup..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi
