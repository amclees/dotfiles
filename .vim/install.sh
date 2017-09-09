#!/bin/sh
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt-get update -y
sudo apt-get install -y neovim
source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p ~/.config/nvim
ln -s ~/dotfiles/.vim/.vimrc ~/.config/nvim/init.vim
nvim +PlugInstall +qall
