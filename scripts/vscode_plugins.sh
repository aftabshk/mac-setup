# installing command_line_launcher
ln -s /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code /usr/local/bin/code

vscodePlugins=(
    ms-azuretools.vscode-docker
    esbenp.prettier-vscode
    2gua.rainbow-brackets
)

for i in "${vscodePlugins[@]}"; do
    code --install-extension "$i"; 
done
