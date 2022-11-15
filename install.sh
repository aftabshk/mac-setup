echo "exporting home brew no auto update"
export HOMEBREW_NO_AUTO_UPDATE=1

echo "APPLICATIONS";
source ./scripts/applications.sh

echo "installing core-utils"
source ./scripts/core_utils.sh

echo "node_modules install"
source ./scripts/node_modules.sh

echo "installing vscode plugins"
source ./scripts/vscode_plugins.sh

echo "installing sdkman for java"
source ./scripts/java_setup.sh

echo "setting up zsh"
source ./scripts/zsh_setup.sh

brew cleanup
