#!/bin/bash

# Installs this vim configuration in the current user's linux machine.

VIMDIR=$(pwd)

cd ..
ln -i -s $VIMDIR/vimrc .vimrc

cd $VIMDIR
git submodule update --init

