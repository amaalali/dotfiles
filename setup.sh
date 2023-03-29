#!/bin/bash

echo "Level=[INFO] Stage=[START] Details=[Running setup for dotfiles]"

TPM_TARGET_DIR=~/.tmux/plugins/tpm
if [ -d "$TPM_TARGET_DIR" ]; then
  echo "Level=[INFO] Stage=[TPM] Details=[Skipping TPM installation as target directory already exists at '$TPM_TARGET_DIR']"
else
  echo "Level=[INFO] Stage=[TPM] Details=[Installing TPM to target directory '$TPM_TARGET_DIR']"
  git clone https://github.com/tmux-plugins/tpm $TPM_TARGET_DIR
fi

echo "Level=[INFO] Stage=[END] Details=[Setup complete]"

