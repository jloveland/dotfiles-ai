#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if [ -z `which brew` ];
then
  echo "  Installing Homebrew for you. Please press [ENTER] to begin install."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# Leverage Brewdler to install non-ruby dependencies from homebrew
brew tap Homebrew/bundle

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install homebrew packages
brew bundle

# Remove outdated versions from the cellar
brew cleanup

exit 0
