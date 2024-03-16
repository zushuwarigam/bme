#!/usr/bin/env bash

NVIM_VERSION=${NVIM_VERSION:-v0.9.5}

# fzf

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

exit 0

mkdir -p ~/.bme_tools/bin || true

wget -O ~/.bme_tools/bin/nvim_$NVIM_VERSION.appimage https://github.com/neovim/neovim/releases/download/$NVIM_VERSION/nvim.appimage \
  && ln -sf ~/.bme_tools/bin/nvim_$NVIM_VERSION.appimage ~/.bme_tools/bin/nvim \
  && ln -sf ~/.bme_tools/bin/nvim_$NVIM_VERSION.appimage ~/.bme_tools/bin/v \
  && ln -sf ~/.bme_tools/bin/nvim_$NVIM_VERSION.appimage ~/.bme_tools/bin/vi \
  && ln -sf ~/.bme_tools/bin/nvim_$NVIM_VERSION.appimage ~/.bme_tools/bin/vim \
  && ln -sf ~/.bme_tools/bin/nvim_$NVIM_VERSION.appimage ~/.bme_tools/bin/neovim \
