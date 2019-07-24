#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="config/nvim/init.vim zshrc .hyper.js"    # list of files/folders to symlink in homedir

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
  # if [ -f "$file" ]; then
  #   echo "$file exist"
  # else
    echo "Creating symlink to $file in home directory."
    ln -sf $dir/$file ~/.$file
  # fi
done
