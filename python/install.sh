# Update pyenv to ensure the list of versions is current
brew update && brew upgrade pyenv

# Find the latest stable version number (ignoring dev/rc/beta releases)
LATEST_PYTHON=$(pyenv install --list | grep -E '^  [0-9]+\.[0-9]+\.[0-9]+$' | tail -1 | tr -d ' ')

# Install the latest Python version
pyenv install "$LATEST_PYTHON"

# Set the newly installed version as your global default
pyenv global "$LATEST_PYTHON"

# Refresh the current shell to recognize the new version
exec "$SHELL"