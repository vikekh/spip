#!/bin/bash

. common.sh
spip-echo "git_email:"
read git_email
spip-echo "git_name:"
read git_name
mkdir ~/.ssh
ssh-keygen -t rsa -b 4096 -C "$git_email" -f ~/.ssh/id_rsa -N ""
git config --global core.editor vim
git config --global user.email "$git_email"
git config --global user.name "$git_name"
