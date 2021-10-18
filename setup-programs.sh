#!/bin/bash

programs=(
    "iterm2"
    "keepassxc"
    "sync"
    "docker"
    "visual-studio-code"
    "intellij-idea"
    "postman"
    "brave-browser"
    "google-chrome"
    "signal"
    "telegram"
    "slack"
    "protonvpn"
    "qbittorrent"
    "vlc"
)

for program in "${programs[@]}"
do
	brew install --cask $program && echo $program installed
done

# cp -r ~/Sync/vscode/extensions ~/.vscode/extensions
