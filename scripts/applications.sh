#! /bin/bash

#### APPLICATIONS ####

applications=(
  visual-studio-code
  intellij-idea
  zoom
  1password
  iterm2
  mattermost
)

for i in "${applications[@]}"; do 
  echo "installing" "$i";
  brew install --cask "$i"
done
