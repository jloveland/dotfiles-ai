#!/bin/bash
installed=$(xcode-select -p)

if [[ $installed == "/Library/Developer/CommandLineTools" || $installed == $DEVELOPER_DIR ]]
  then
    echo "xcode command line tools already installed..."
  else
    echo "installing xcode command line tools..."
    xcode-select --install
fi
