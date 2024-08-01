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
brew install --cask zed
brew install --cask bitwarden
brew install --cask raycast
brew install --cask cleanshot
brew install --cask whatsapp
brew install --cask todoist
brew install --cask discord
brew install --cask minisim
brew install --cask devcleaner
brew install --cask muzzle

# React native
brew install watchman
brew install cocoapods
gem install ffi

## Sdk man
curl -s "https://get.sdkman.io" | bash

echo "Installed all apps & utils!"

# Run stow
stow .
