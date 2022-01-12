#!/bin/bash

# Install rosetta for non Apple silicon built programs
softwareupdate --install-rosetta

# Install node version manager
brew install nvm

# Install wget
brew install wget

# Install jdk17
brew install openjdk
# wget -c --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" https://javadl.oracle.com/webapps/download/GetFile/1.8.0_261-b12/a4634525489241b9a9e1aa73d9e118e6/unix-i586/jdk-8u261-macosx-x64.dmg

# Install kotlin
brew install kotlin

# Install python
brew install python3
brew install python
brew unlink python && brew link --overwrite python # make sure python links to python2

pip2 install --upgrade pip setuptools # upgrade to latest pip2
pip3 install --upgrade pip setuptools

# Install maven
brew install maven
