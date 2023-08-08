#!/usr/bin/env bash

# ===============================================
# CONFIG
# ===============================================

set -e

# Define log folder
LOGFOLDER=~/"Library/Logs/homebrew-setup"
LOGFILE="homebrew-setup"

# Create current ISO-formatted timestamp
CURRENTDATE=$(date "+%Y.%m.%d-%H.%M.%S")
LOGPATH="$LOGFOLDER/$LOGFILE-$CURRENTDATE.log"

componentBrew="brew"
componentCask="cask"
componentMAS="mas"
componentCheck=($componentBrew $componentCask $componentMAS)

# ===============================================
# Begin
# ===============================================

# Create log folder
mkdir -p "$LOGFOLDER"

printf "\n\tWriting output to $LOGPATH\n\n"

# Check if required components are already installed if not, exit
isNotInstalled=0

for theComponent in ${componentCheck[@]}; do
  if which $theComponent >/dev/null; then
		printf "\n\t=====> Component: $theComponent ✓...\n" >> $LOGPATH 2>&1
	else
		printf "\n\t=====> Component: $theComponent ✗...\n" >> $LOGPATH 2>&1
		isNotInstalled=$((isNotInstalled+1))
	fi
done

if  [[ $isNotInstalled > 0 ]]; then
  printf "\n\t=====> Component check failed. Not all required components are installed ✗...\n" >> $LOGPATH 2>&1
else
  printf "\n\t=====> Component check passed. All required components are installed ✓...\n" >> $LOGPATH 2>&1
  exit 1
fi

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until "Setup homebrew-cask.command" is finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

printf "\n\n====================================================================\n" >> $LOGPATH 2>&1
printf "\n\t--> Updating OSX.  If this requires a restart, run the script again.\n" >> $LOGPATH 2>&1

# Install all available updates
sudo softwareupdate -iva
# Install only recommended available updates
#sudo softwareupdate -irv

printf "\n\n=======================================================\n" >> $LOGPATH 2>&1
printf "\n\t--> Installing Xcode Command Line Tools (xcode-select).\n\n" >> $LOGPATH 2>&1
# Check if xcode-select is already installed; only install if it is not there, yet
if test ! $(which xcode-select); then
  printf "\n\t--> Installing xcode-select...\n" >> $LOGPATH 2>&1
  xcode-select --install
fi

# Install homebrew
# Check if Homebrew is already installed; only install if it is not there, yet
if test ! $(which brew); then
  printf "\n\t--> Installing homebrew...\n" >> $LOGPATH 2>&1
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
printf "\n\t--> Updating homebrew\n" >> $LOGPATH 2>&1
brew update

# Upgrade any already-installed formulae.
printf "\n\t--> Upgrading homebrew\n" >> $LOGPATH 2>&1
brew upgrade --all

# Remove outdated versions from the cellar.
printf "\n\t--> Cleaning up homebrew\n" >> $LOGPATH 2>&1
brew cleanup

# Install Cask
printf "\n\t--> Install cask\n" >> $LOGPATH 2>&1
brew tap caskroom/cask
brew install caskroom/cask/brew-cask

# Run the doctors
printf "\n\t--> Running doctors\n" >> $LOGPATH 2>&1
brew doctor
brew cask doctor

printf "\n=====================\n" >> $LOGPATH 2>&1
printf "All actions finished." >> $LOGPATH 2>&1
printf "\n=====================\n\n" >> $LOGPATH 2>&1
