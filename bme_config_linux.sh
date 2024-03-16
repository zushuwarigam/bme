#!/usr/bin/env bash

NVIM_VERSION=${NVIM_VERSION:-v0.9.5}


# alias
alias ff="vim +\$(rg -n . | fzf | awk -F: '{print '+'\$2,\$1}')"

[ ! -d ~/.bme_tools/bin ] && mkdir -p ~/.bme_tools/bin

grep -q "bme_tools/bin" ~/.bashrc || echo -e "\nexport PATH=~/.bme_tools/bin:\$PATH" >> ~/.bashrc
 
# fzf
[ ! -d ~/.fzf ] && (git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install)

# nvim
[ ! -e ~/.bme_tools/bin/nvim_$NVIM_VERSION.appimage ] && \
wget -O ~/.bme_tools/bin/nvim_$NVIM_VERSION.appimage https://github.com/neovim/neovim/releases/download/$NVIM_VERSION/nvim.appimage \
  && chmod +x ~/.bme_tools/bin/nvim_$NVIM_VERSION.appimage \
  && ln -sf ~/.bme_tools/bin/nvim_$NVIM_VERSION.appimage ~/.bme_tools/bin/nvim \
  && ln -sf ~/.bme_tools/bin/nvim_$NVIM_VERSION.appimage ~/.bme_tools/bin/v \
  && ln -sf ~/.bme_tools/bin/nvim_$NVIM_VERSION.appimage ~/.bme_tools/bin/vi \
  && ln -sf ~/.bme_tools/bin/nvim_$NVIM_VERSION.appimage ~/.bme_tools/bin/vim \
  && ln -sf ~/.bme_tools/bin/nvim_$NVIM_VERSION.appimage ~/.bme_tools/bin/neovim


