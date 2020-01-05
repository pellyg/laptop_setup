#!/bin/bash


# uncomment to use files separately from git
# rm -rf ~/git_setup
# cp -r git_setup/.* ~/

# set up x-code (requires manual confirmation in order to proceed)
#echo "installing xcode"
#xcode-select --install

echo Setting up diff-so-fancy for git
source ./diff_so_fancy.sh


cp git_setup/.gitignore ~/
cp git_setup/.gitconfig ~/

WORKING_DIR=`pwd`

if grep -Fq ".git_aliases" ~/.bashrc
then
    echo "bashrc contains aliases - not copying files from $WORKING_DIR to home dir"
else
    echo "bashrc  does not contains aliases"
    touch ~/.bashrc
    # echo "source ~/.git_aliases" >> ~/.bashrc
    echo "source $WORKING_DIR/.git_aliases" >> ~/.bashrc
    echo "source $WORKING_DIR/.git-completion.bash" >> ~/.bashrc
    echo "source $WORKING_DIR/.git_prompt.sh" >> ~/.bashrc
fi