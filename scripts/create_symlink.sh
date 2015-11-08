#!/bin/bash

###############################################################################
#
# Script: create_symlink.sh
# Purpose: Create symlinks in $HOME and/or $XDG_CONFIG_HOME
#
###############################################################################

# Variables
rootdir=~/Codes/arch-dotfiles
backupdir=~/Codes/arch-dotfiles/backup
files="bashrc vimrc vim zshrc oh-my-zsh" 

# Creating backup directory 
echo -n "Creating $backupdir for backup of any existing dotfiles in ~ ..."
mkdir -p $backupdir
echo "done"

# Change to the $rootdir
echo -n "Changing to the $rootdir directory ..."
cd $rootdir
echo "done"

# Move any existing dotfiles in to $backupdir directory, then create symlinks.
# Symlinks from arch-dotfiles/directory to ~/$XDG_CONFIG_HOME/~
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $backupdir"
    mv ~/.$file $backupdir
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
