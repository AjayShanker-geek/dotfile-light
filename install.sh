#! /bin/bash

echo -e "Installation Vim Config..."
echo -e "Create Symbolic Link to .vimrc"
ln -s $(pwd)/.vimrc ~/.vimrc

echo -e "Complete!"
