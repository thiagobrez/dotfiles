# Useful site for finding defaults
# https://macos-defaults.com

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# General: click in the scrollbar to jump to the spot that's clicked
defaults write -globalDomain AppleScrollerPagingBehavior -bool true

# General: set sidebar icon size to Medium
defaults write -globalDomain NSTableViewDefaultSizeMode -int 2

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Dock: automatically hide and show the dock
defaults write com.apple.dock "autohide" -bool "true"

# Dock: do not show recents
defaults write com.apple.dock "show-recents" -bool "false"

# Dock: tile size
defaults write com.apple.dock tilesize -int 50

# Dock: tile size (maginified)
defaults write com.apple.dock largesize -int 70

# Dock: enable magnification
defaults write com.apple.dock magnification -bool true

# Dock: show indicators for open applications
defaults write com.apple.dock show-process-indicators -bool true

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Mission Control: automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Mission Control: group windows by application
defaults write com.apple.dock "expose-group-apps" -bool "true"

# Mission Control: enabled dashboard in overlay
defaults write com.apple.dock dashboard-in-overlay -bool true

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Keyboard: repeat keys when holding down
defaults write NSGlobalDomain "ApplePressAndHoldEnabled" -bool "false"

# Keyboard: change initial key repeat time
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Keyboard: change key repeat time
defaults write NSGlobalDomain KeyRepeat -int 2

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Finder: show file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show hidden files
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"

# Finder: do not show warning before changing an extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Finder: do not show warning before removing from iCloud Drive
defaults write com.apple.finder FXEnableRemoveFromICloudDriveWarning -bool false

# Finder: view as list
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Finder: show path bar at the bottom
defaults write com.apple.finder ShowPathbar -bool true

# Finder: keep folders on top when sorting by name
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Control Center: always show Bluetooth in menu bar
defaults -currentHost write com.apple.controlcenter Bluetooth -int 18

# Control Center: always show Sound in menu bar
defaults -currentHost write com.apple.controlcenter Sound -int 18

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Simulator: save screenshots to Downloads folder
defaults write com.apple.iphonesimulator "ScreenShotSaveLocation" -string "~/Downloads"

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Kill affected apps
for app in "Dock" "Finder"; do
  killall "${app}" > /dev/null 2>&1
done

# Done
echo "Done. Note that some of these changes require a logout/restart to take effect."
