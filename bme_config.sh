#!/usr/bin/env bash

echo "BME: do my config"
exit 0

VERSION=${VERSION:-v0.9.5}

apt update && apt install git wget -y

mkdir -p ~/.bme_tools/bin || true

wget -O ~/.bme_tools/bin/nvim_$VERSION.appimage https://github.com/neovim/neovim/releases/download/$VERSION/nvim.appimage \
  && ln -sf ~/.bme_tools/bin/nvim_$VERSION.appimage ~/.bme_tools/bin/nvim \
  && ln -sf ~/.bme_tools/bin/nvim_$VERSION.appimage ~/.bme_tools/bin/v \
  && ln -sf ~/.bme_tools/bin/nvim_$VERSION.appimage ~/.bme_tools/bin/vi \
  && ln -sf ~/.bme_tools/bin/nvim_$VERSION.appimage ~/.bme_tools/bin/vim \
  && ln -sf ~/.bme_tools/bin/nvim_$VERSION.appimage ~/.bme_tools/bin/neovim \
