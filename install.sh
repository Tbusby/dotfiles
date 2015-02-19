#!/bin/bash
###################
# install.sh
# This script creates the necasarry symlinks in the home dir to the desired dotfiles in ~/dotfiles
#############

###### Variables
dir=~/dotfiles		# dotfiles dir
olddir=~/dotfiles_old	# old dotfiles backup dir
files="bashrc vimrc vim"	# list of files/folders to symlink in home

######

# create dotfiles in home dir
echo "Creating ${olddir} for backup of any existing dotfiles in ~"
mkdir -p ${olddir}
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done


