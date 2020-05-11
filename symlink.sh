#!/bin/sh

unameOut="$(uname -s)"
case "${unameOut}" in
  Linux*)  machine=Linux;;
  Darwin*) machine=Mac;;
  *)       machine=Other;;
esac


# ~/
ln -sv ~/dotfiles/.xmonad ~

if [ "$machine" = "Linux" ]; then
  ln -sv ~/dotfiles/.zshrc ~
fi

if [ "$machine" = "Mac" ]; then
  ln -sv ~/dotfiles/.mac.zshrc ~/.zshrc
fi

# ~/.config
ln -sv ~/dotfiles/alacritty ~/.config
ln -sv ~/dotfiles/nvim ~/.config
