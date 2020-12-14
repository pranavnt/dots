#!/bin/bash

# Copying over git dotfiles
cp .gitconfig ./git
cp .gitignore_global ./git

# Copying over vim dotfiles
cp .vimrc ./vim

# Adding dotfiles 
git add git
git add vim

# Backing up script
git add backup_dots.sh

# Commiting
git commit -m "backup" # switch to reading argument

# Pushing to github
git push -u origin main

# Success message
echo Backed up!
