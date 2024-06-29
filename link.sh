#!/bin/bash

stow -t ~ -v home

# Ensure the config directory exists
if [ ! -d ~/.config ]; then
  echo "Creating config directory"
  mkdir -p ~/.config
fi

stow -t ~/.config -v config
