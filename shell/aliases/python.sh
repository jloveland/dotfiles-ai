alias prettyjson='python -m json.tool'

# Alias to Python to the Python3 installed by Homebrew
alias python=python3
alias pip=pip3

# suppress homebrew warnings
# alias brew='env PATH="${PATH//$(pyenv root)/shims:/}" brew'

# set version in install script
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi
