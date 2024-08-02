# Setup macOS preferences
./setup-preferences.sh

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Upgrade brew
brew upgrade

# Install brew packages from Brewfile
brew bundle

# Install SDKMAN! to manage JDK versions
curl -s "https://get.sdkman.io" | bash

# Install Dracula Terminal Theme
git clone https://github.com/dracula/terminal-app.git

echo "Installed all apps & utils!"

# Symlink dotfiles to the HOME directory
stow .
