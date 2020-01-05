#!/bin/bash


rm -rf ~/git_setup
cp -r git_setup/.* ~/

# set up x-code (requires manual confirmation in order to proceed)
echo "installing xcode"
xcode-select --install



ln -sf  ~/git_setup/.gitignore ~/.gitignore
ln -sf  ~/git_setup/.gitconfig ~/.gitconfig

ln -sf  ~/git_setup/.git_aliases ~/.git_aliases


if grep -Fq ".git_aliases" ~/.bashrc
then
    echo "bashrc contains alises"
else
    echo "bashrc  does not contains alises"
    touch ~/.bashrc
    echo "source ~/.git_aliases" >> ~/.bashrc
fi
