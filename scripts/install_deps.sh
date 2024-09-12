function exists() {
  pacman -Qi "$1" > /dev/null 2>&1
  [[ $? -eq 0 ]]
}

sudo pacman -Syu zsh git fzf fd ripgrep

# install rustup
if exists "rustup"; thenA
    echo "Installing rustup..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi
