#!/usr/bin/env bash

curl -fsSL https://raw.githubusercontent.com/yyakimov/install/HEAD/setup_dock.sh >> "./setup_dock.sh"
source "./setup_dock.sh"
setup_dock

curl -fsSL https://raw.githubusercontent.com/yyakimov/install/HEAD/install_brew.sh >> "./install_brew.sh"
source "./install_brew.sh"
install_brew

# install first because might need to update script
install_vscode

brew install --cask google-chrome
brew install --cask telegram
brew install --cask obsidian
brew install --cask vlc
brew install --cask macpass
brew install --cask google-drive
brew install --cask yandex-disk
brew install --cask paragon-extfs

brew install --cask iterm2
brew install --cask docker
brew install --cask rider

brew install --cask adobe-creative-cloud

rm "./setup_dock.sh"
rm "./install_brew.sh"
