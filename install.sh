#!/bin/bash
rm ~/.vimrc ~/.ideavimrc ~/.vim
ln -s $PWD ~/.vim
ln -s $PWD/.vimrc ~/.vimrc
ln -s $PWS/.vimrc ~/.ideavimrc
sudo apt install fonts-firacode
curl https://sh.rustup.rs -sSf | sh
source ~/.profile
cd plugin
git clone https://github.com/euclio/vim-markdown-composer && cd vim-markdown-composer
cargo build --release --no-default-features --features json-rpc
echo "Vim configuration installed"
