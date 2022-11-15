#! /bin/bash

Install Oh my zsh
echo "installing oh my zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

zshPlugins=(
    https://github.com/zsh-users/zsh-syntax-highlighting.git
    https://github.com/zsh-users/zsh-autosuggestions.git
    https://github.com/marlonrichert/zsh-autocomplete.git
)

for i in "${zshPlugins[@]}"; do
    echo "installing" "$i";
    dir=$(echo "$i" | rev | cut -d '/' -f 1 | rev | cut -d '.' -f 1)
    git clone "$i" ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/$dir
done