export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Tell nvm to use latest node version installed as default
nvm alias default node

export NODE_VERSION=v23
nvm install $NODE_VERSION
nvm use $NODE_VERSION
