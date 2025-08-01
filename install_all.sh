#!/usr/bin/env zsh

if command -v brew >/dev/null 2>&1; then
    echo "Homebrew is installed."
else
    echo "Homebrew is not installed. Please install homebrew before"
    exit -1
fi

if command -v git >/dev/null 2>&1; then
    echo "Git is installed."
else
    echo "Git is not installed. Please install git with xcode-select"
    exit -1
fi


./install_lazyvim_requirements.sh
./config/config.sh
./install_nerd_fonts.sh
./iterm2/install_iterm2.sh
./wallpaper/set.sh
