#!/bin/bash

# Install vim
brew install vim

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Setup vim (Should vim into ~/.vimrc and run :PlugInstall)
cp ./bash-configs/vimrc ~/.vimrc

# Install pcat
sudo pip3 install pygments

# Install htop
brew install htop

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install spaceship theme for zsh
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Setup profile and zshrc
cp ./bash-configs/profile ~/.profile
cp ./bash-configs/zshrc ~/.zshrc

# Install nerd-fonts
cask "font-hack-nerd-font" do\
  version "2.1.0"\
  sha256 "70852e59fcffbe31d401f615625bcb9ebb6af72732c2f1fe9b9d5370c2565514"\
\
  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Hack.zip"\
  appcast "https://github.com/ryanoasis/nerd-fonts/releases.atom"\
  name "Hack Nerd Font (Hack)"\
  homepage "https://github.com/ryanoasis/nerd-fonts"\
\
  font "Hack Bold Nerd Font Complete Mono.ttf"\
  font "Hack Bold Nerd Font Complete.ttf"\
  font "Hack Bold Italic Nerd Font Complete Mono.ttf"\
  font "Hack Bold Italic Nerd Font Complete.ttf"\
  font "Hack Regular Nerd Font Complete.ttf"\
  font "Hack Regular Nerd Font Complete Mono.ttf"\
  font "Hack Italic Nerd Font Complete Mono.ttf"\
  font "Hack Italic Nerd Font Complete.ttf"\
end
: 1603201810:0;brew tap homebrew/cask-fonts\
brew cask install font-hack-nerd-font