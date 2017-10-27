#!/bin/bash
# JavaScript Development Environment Setup on Ubuntu
# Author : MI MUKIT

# Set sudo throughout terminal session
sudo -s

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