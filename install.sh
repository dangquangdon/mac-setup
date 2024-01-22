#!/bin/bash
# Install Oh-my-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install xCode cli tools
echo "Installing commandline tools..."
xcode-select --install

# Homebrew
## Install
echo "Installing Brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(
	echo
	echo 'eval "$(/opt/homebrew/bin/brew shellenv)"'
) >>$HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew analytics off

brew tap homebrew/cask-fonts
brew tap FelixKratz/formulae
brew tap koekeishiya/formulae

brew install font-fira-code-nerd-font
brew install font-fira-code

brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

# Wezterm
brew install --cask wezterm

# Starship
curl -sS https://starship.rs/install.sh | sh

# Neovim
brew install neovim

# Python
brew install pyenv

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
brew install rust-analyzer

# Colima & docker
brew install docker
brew install docker-compose
brew install colima
brew services start colima

# Sketchybar
brew install sketchybar
brew install --cask font-hack-nerd-font
brew install --cask sf-symbols
brew install --cask font-jetbrains-mono-nerd-font

# Yabai Window manager
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd
brew install borders
cp /opt/homebrew/opt/yabai/share/yabai/examples/yabairc ~/.yabairc
cp /opt/homebrew/opt/yabai/share/yabai/examples/skhdrc ~/.skhdrc
curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v1.0.3/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf

# Other
brew install tree
brew install --cask inkscape
brew install --cask libreoffice
brew install --cask meetingbar
brew install --cask skim
brew install ifstat
brew install wget
brew install ripgrep
brew install gh
brew install btop
brew install dooit

# Copy config files
echo "Copying config files..."
cp -r config/* ~/.config/
mv ~/.zshrc ~/.zshrc-old
cp zshrc ~/.zshrc

# Start services
source ~/.zshrc
brew services start sketchybar
yabai --start-service
skhd --start-service
brew services start borders
