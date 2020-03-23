#!/bin/bash

source ./git_setup/.git_aliases
source ./git_setup/.git_prompt.sh

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
