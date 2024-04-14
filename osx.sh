#! /usr/bin/env bash
# some ideas from here:
# https://github.com/geerlingguy/dotfiles/blob/master/.osx

# -----------------------------------------------------------------------------
# Finder:
# set Desktop as the default location for new Finder windows
# for other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Desktop/"

# show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# when performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# -----------------------------------------------------------------------------
# Typing:
# disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# -----------------------------------------------------------------------------
# Terminal:
# removes square brackets
defaults write com.apple.Terminal AutoMarkPromptLines -int 0

# -----------------------------------------------------------------------------
# Dock:
# autohide with no delay
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.15

# -----------------------------------------------------------------------------
# Screenshots:
# save to desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop/Screenshots"

# save in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# disable window shadow
defaults write com.apple.screencapture disable-shadow -bool true

# -----------------------------------------------------------------------------
# App Store:
# disable in-app rating requests from apps downloaded from the App Store
defaults write com.apple.appstore InAppReviewEnabled -int 0


# -----------------------------------------------------------------------------
# Finalize
# restart affected applications if `--no-restart` flag is not present.
if [[ ! ($* == *--no-restart*) ]]; then
  for app in "Dock" "Finder" "SystemUIServer" "Terminal"; do
    killall "${app}" > /dev/null 2>&1
  done
fi

printf "Please log out and log back in to make all settings take effect.\n"
