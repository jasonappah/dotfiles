fish_add_path --prepend "$HOME/Library/Android/sdk/emulator" "$HOME/Library/Android/sdk/platform-tools"
fish_add_path --prepend "$HOME/.poetry/bin"
fish_add_path --prepend "$HOME/flutter/bin"
fish_add_path --prepend "$HOME/bin"
fish_add_path --prepend "$HOME/Library/Android/sdk/tools/bin"
fish_add_path --prepend "/opt/homebrew/opt/postgresql@15/bin"
fish_add_path --prepend "$HOME/.local/bin"
fish_add_path --prepend "/opt/homebrew/opt/ccache/libexec"

set -gx ANDROID_HOME "$HOME/Library/Android/sdk"
set -gx BUN_INSTALL "$HOME/.bun"
set -gx PYENV_ROOT "$HOME/.pyenv"
set -gx GPG_TTY (tty)
set -gx EDITOR "micro"
set -gx HOMEBREW_BUNDLE_FILE "$HOME/Brewfile"
set -gx CLOUDFLARE_API_TOKEN "MgF3xW6NoTqBRPIaqlHBry3-veU_mRMzU1BTQRHW"
set -gx JAVA_HOME "/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home"


# bun
set --export BUN_INSTALL "$HOME/.bun"
fish_add_path --prepend "$HOME/.bun/bin"
# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
