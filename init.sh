#!/bin/bash

DIR="$( cd "$(dirname "$0")" && pwd)" # Path to folder of this script

mv $HOME/.zshrc $HOME/.zshrc.bkp

ln -s $DIR/zsh/.zshrc $HOME/.zshrc
