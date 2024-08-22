# Setup macOS preferences
echo "Changing macOS defaults..."
./setup-preferences.sh
echo "MacOS defaults changed successfully ✅"

# Install Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Add Homebrew to PATH
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/thiagobrez/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
echo "Homebrew installed successfully ✅"

# Upgrade brew
echo "Upgrading Homebrew..."
brew upgrade
echo "Homebrew upgraded successfully ✅"

# Install Homebrew packages from Brewfile
echo "Installing packages from Brewfile..."
brew bundle
echo "Homebrew packages installed successfully ✅"

# Install Bun
echo "Installing Bun..."
curl -fsSL https://bun.sh/install | bash
echo "Bun installed successfully ✅"

# Install idb for Flipper
echo "Installing idb..."
pip3 install --break-system-packages fb-idb
echo "idb installed successfully ✅"

# Symlink dotfiles to the HOME directory
echo "Symlinking dotfiles..."
stow -t ~ -d ~/dotfiles zshrc gitconfig zed

echo "Symlinked dotfiles successfully ✅"
echo "Installed all apps & utils 🎉"
