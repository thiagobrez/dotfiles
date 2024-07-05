# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Upgrade brew
brew upgrade

# Install packages
brew install git
brew install yarn
brew install node
brew install nvm
brew install neofetch
brew install rvm
brew install stow 
brew install ffmpeg
brew install fzf
brew install zoxide

# Casks
brew install --cask arc
brew install --cask visual-studio-code
brew install --cask obsidian
brew install --cask 1password
brew install --cask raycast
brew install --cask cleanshot
brew install --cask iterm2
brew install --cask spotify
brew install --cask fork

# React native
brew install watchman
brew install cocoapods
gem install ffi

## Sdk man
curl -s "https://get.sdkman.io" | bash

echo "Installed all apps & utils!"

# Run stow
stow .
