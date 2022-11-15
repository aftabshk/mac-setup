#! /bin/bash

zshPlugins=(
    zsh-syntax-highlighting
)

for i in "${zshPlugins[@]}"; do
    echo "installing" "$i";
    brew install "$i"
done