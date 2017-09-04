#!/bin/sh
# automatically configures vim header by adding it into your plugin folder

echo "You will need a vim plugin manager to use this custom header."
echo "Pathogen is a simple vim plugin manager."

while true; do
    read -p "Do you wish to install pathogen? " yn
    case $yn in
        [Yy]* ) ./pathogen-install.sh; break;;
        [Nn]* ) echo "If you change your mind, just re-run this script"; exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

if [ -x "$(command -v vim)" ]; then
    mkdir -p ~/.vim/plugin
    cp plugin/poly-header.vim ~/.vim/plugin/poly-header.vim
else
    echo "We're having some trouble finding vim on your system."
    which vim
fi
