# Setup macOS preferences
./setup-preferences.sh

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Add Homebrew to PATH
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/thiagobrez/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Upgrade brew
brew upgrade

# Install brew packages from Brewfile
brew bundle

echo "Installed all apps & utils ✅"

# Symlink dotfiles to the HOME directory
stow -t ~ -d ~/dotfiles zshrc gitconfig

echo "Symlinked dotfiles ✅" 