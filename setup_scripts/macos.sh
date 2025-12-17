#!/bin/bash

if test ! $(which brew); then
    echo "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
brew update
brew upgrade

apps=(
    dockutil
    git
    gnupg
    jq
    mise
    neovim
    starship
    stow
)
brew install "${apps[@]}"

apps=(
    1password
    chromium
    docker
    discord
    firefox@developer-edition
    font-jetbrains-mono
    font-symbols-only-nerd-font
    home-assistant
    microsoft-edge
    obsidian
    raycast
    vscodium
    wezterm
)
brew install --cask --adopt "${apps[@]}"

brew cleanup

dockutil --no-restart --remove all $HOME

apps=(
    Obsidian
    'Firefox Developer Edition'
    Chromium
    'Microsoft Edge'
    Safari
    Music
    Notes
    VSCodium
    WezTerm
    Discord
    Messages
    1Password
    'Home Assistant'
    'System Settings'
)

for app in "${apps[@]}"
do
    echo "Keeping $app in Dock"
    dockutil --no-restart --add "/Applications/$app.app" $HOME
done

defaults write com.apple.screencapture location -string "$HOME/Pictures/Screenshots" # Set screencapture location
defaults write com.apple.dock autohide -boolean true # Hide the dock
defaults write com.apple.dock mru-spaces -boolean false # Don't rearrange workspaces
defaults write com.apple.dock show-recents -boolean false # Don't show recent apps in Dock 
defaults write com.apple.finder "AppleShowAllFiles" -boolean true # Show hidden files in Finder
defaults write NSGlobalDomain "AppleShowAllExtensions" -boolean true # Show file extensions in Finder

killall Dock
killall Finder
killall SystemUIServer
