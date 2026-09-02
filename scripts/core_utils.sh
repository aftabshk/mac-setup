#! /bin/bash
#### CORE UTILS ####

brew tap teamookla/speedtest

coreUtils=(
    leiningen
    clojure
    stern
    kubectx
    tig
    tree
    bat
    node
    watch
    ack
    kubernetes-cli
    minikube
    nvm
    jq
    docker
    ccmenu
    flycut
    fish
    vim
    colima
    go
)

for i in "${coreUtils[@]}"; do 
    echo "installing" "$i";
    brew install "$i" 
done
