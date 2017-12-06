#!/bin/bash



if brew ls --versions diff-so-fancy > /dev/null; then
 echo git-so-fancy is installed! Setting globals 
else
  echo installing diff-so-fancy
  brew install diff-so-fancy
fi

# Configure git to use diff-so-fancy for all diff output:

git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"


# Improved colors for the highlighted bits
# The default colors are not the best so we recommend the following color settings as a base.

git config --global color.ui true

git config --global color.diff-highlight.oldNormal "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"

git config --global color.diff.meta "227"
git config --global color.diff.frag "magenta bold"
git config --global color.diff.commit "227 bold"
git config --global color.diff.old "red bold"
git config --global color.diff.new "green bold"
git config --global color.diff.whitespace "red reverse"


# Options
# markEmptyLines

# Should the first block of an empty line be colored. (Default: true)

git config --bool --global diff-so-fancy.markEmptyLines false

#changeHunkIndicators
# Simplify git header chunks to a more human readable format. (Default: true)

git config --bool --global diff-so-fancy.changeHunkIndicators false


#stripLeadingSymbols
#Should the pesky + or - at line-start be removed. (Default: true)

git config --bool --global diff-so-fancy.stripLeadingSymbols false

