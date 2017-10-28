#!/bin/bash
# JavaScript Development Environment Setup on Ubuntu
# Author : MI MUKIT

echo ""
echo "===================="
echo " Basic Setup        "
echo "===================="
echo ""

# Basic Setup
#============

# Add essential repositories
sudo add-apt-repository ppa:numix/ppa -y
sudo apt-add-repository ppa:tista/adapta -y

# System update && upgrade
sudo apt update
sudo apt upgrade

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