#!/bin/bash

echo "Créer l'arborescence de travail"
mkdir ~/bin ~/cegep ~/projets

echo "Install virtualbox-guest-utils to manage copy/paste"
sudo pacman -Sy virtualbox-guest-utils

echo "Installing IDEs"
sudo pacman -Sy code vim nvim

echo "Installing GNU tools"
sudo pacman -Sy gcc gbc

echo "Installing Python 3 to enable development and execution of this language"
sudo pacman -Sy python3 python-pip python-virtualenv

echo "Installing Bash-it for theme"
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it ~/.bash_it/install.sh

echo "Copier les dotfiles vers dossier home et .config
cp ".bashrc" "$HOME"
cp ".gitconfig" "$HOME"
