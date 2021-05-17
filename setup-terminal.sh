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
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

# Setup zsh plugins
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
