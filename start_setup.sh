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
sudo add-apt-repository ppa:numix/ppa
sudo add-apt-repository ppa:noobslab/macbuntu

# System update && upgrade
sudo apt update
sudo apt upgrade

# Install build essentials
sudo apt install -y gcc build-essential libssl-dev

# Package installer for .deb
sudo apt install -y gdebi

# HTTP request tool curl
sudo apt install -y curl

# Add 'New Document' on context menu
touch ~/Templates/Untitled\ Document


echo ""
echo "========================"
echo " Themes & Customization "
echo "========================"
echo ""

# Themes & icons
#===============
sudo apt install -y numix-gtk-theme numix-icon-theme-circle macbuntu-os-icons-v9

# Gnome tweak tool
sudo apt install -y gnome-tweak-tool