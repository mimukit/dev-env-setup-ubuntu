#!/bin/bash
# JavaScript Development Environment Setup on Ubuntu
# Author : MI MUKIT


echo ""
echo "========================"
echo " Adding Essential Repos "
echo "========================"
echo ""

# Adding Essential Repos
#=======================

# Theme Repos
sudo add-apt-repository ppa:numix/ppa -y
sudo apt-add-repository ppa:tista/adapta -y

# Software Repos
sudo add-apt-repository ppa:plushuang-tw/uget-stable -y



echo ""
echo "===================="
echo " Basic Setup        "
echo "===================="
echo ""

# Basic Setup
#============

# System update && upgrade
sudo apt update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y


# Install build essentials
sudo apt install gcc build-essential libssl-dev -y

# Package installer for .deb
sudo apt install gdebi -y

# HTTP request tool curl
sudo apt install curl -y

# Add 'New Document' on context menu
touch ~/Templates/Untitled\ Document


echo ""
echo "========================"
echo " Themes & Customization "
echo "========================"
echo ""

# Themes & icons
#===============

# Themes: Numix, Adapta, Arc Collection
sudo apt install numix-gtk-theme -y
sudo apt install adapta-gtk-theme -y

cd /tmp
wget https://github.com/LinxGem33/OSX-Arc-Plus/releases/download/v1.4.1/osx-arc-collection_1.4.1_amd64.deb
sudo gdebi -n osx-arc-collection_1.4.1_amd64.deb

# Icons: Numix circle, Arc OSX Icons
sudo apt install numix-icon-theme-circle -y
cd /tmp
git clone https://github.com/LinxGem33/Arc-OSX-Icons.git arc-icons
sudo cp -r arc-icons/src/* /usr/share/icons

# Gnome tweak tool
sudo apt install gnome-tweak-tool -y


echo ""
echo "========================"
echo " Development Setup      "
echo "========================"
echo ""


# Development Setup
#==================

# Git
sudo apt install git  -y

# Node with NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
nvm install node
nvm use node

# Node package manager NPM & Yarn
npm i -g npm
npm i -g yarn

# Meteor install
curl https://install.meteor.com/ | sh
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p



echo ""
echo "======================"
echo " Installing Softwares "
echo "======================"
echo ""


# Softwares
#==========

# Google Chrome
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi -n google-chrome-stable_current_amd64.deb

# VLC Media Player
sudo apt install vlc -y

# uGet Downloader
sudo apt install uget -y

# GitKraken
cd /tmp
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo gdebi -n gitkraken-amd64.deb

# Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text -y

# VSCode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install code -y

# Studio 3T
cd /tmp
wget https://download.studio3t.com/studio-3t/linux/5.6.2/studio-3t-linux-x64.tar.gz
tar -zvxf studio-3t-linux-x64.tar.gz
sudo mv studio-3t-5.6.2-linux-x64 studio-3t
sudo mv studio-3t /opt
wget https://studio3t.com/wp-content/uploads/2017/01/cropped-favicon.png
sudo mv cropped-favicon.png studio3t.png
mv studio3t.png /opt/studio-3t/bin/
sudo cp /Desktop/dev-env-setup-ubuntu/config/studio3t.desktop /usr/share/applications


echo ""
echo "============================="
echo " Installing Gnome Extensions "
echo "============================="
echo ""


# Gnome Extensions
#==================

# Gnome Extension Installer Script
sudo cp ~/Desktop/dev-env-setup-ubuntu/config/gnomeshell-extension-manage /usr/local/bin/gnomeshell-extension-manage
sudo chmod +x /usr/local/bin/gnomeshell-extension-manage

# Dash To Dock
gnomeshell-extension-manage --install --extension-id 307 --system

# Simple Net Speed
gnomeshell-extension-manage --install --extension-id 1085 --system



echo ""
echo "============================"
echo " Installing ZSH as terminal "
echo "============================"
echo ""


# Install & config zsh
#======================

# Install zsh
sudo apt install zsh -y

# zsh manager: antigen
curl -L git.io/antigen > $HOME/antigen.zsh

# zsh config set
sudo cp ~/Desktop/dev-env-setup-ubuntu/config/.zshrc ~/


echo ""
echo "==================="
echo " Restarting System "
echo "==================="
echo ""


# System Restart
#==================
sudo reboot