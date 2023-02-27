#!/bin/bash

echo "[START] Running setup for dotfiles."

TPM_TARGET_DIR=~/.tmux/plugins/tpm
if [ -d "$TPM_TARGET_DIR" ]; then
  echo "[INFO][TPM] Skipping TPM installation as target directory already exists at '$TPM_TARGET_DIR'."
else
  echo "[INFO][TPM] Intalling TPM to target directory '$TPM_TARGET_DIR'"
  git clone https://github.com/tmux-plugins/tpm $TPM_TARGET_DIR
fi

echo "[END] Setup complete."

