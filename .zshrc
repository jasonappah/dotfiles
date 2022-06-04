# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"
if [[ -r "$HOME/.special.zsh" ]]; then
  source $HOME/.special.zsh
fi

macchina -o Battery Memory ProcessorLoad Uptime Distribution Packages Terminal Resolution Host Shell



. /opt/homebrew/etc/profile.d/tii_on_command_not_found.sh
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export CLOUDSDK_PYTHON=/opt/homebrew/Cellar/python@3.9/3.9.12_1/bin/python3

if [[ `uname` == "Darwin" ]]; then
    ON_MAC=true
else
    ON_MAC=false
fi

if [[ `arch` == "arm64" ]]; then
	ARM=true
else
	ARM=false
fi





alias gpgpls="gpgconf --kill gpg-agent"
export GPG_TTY=$(tty)
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='micro'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"

# heroku autocomplete setup
HEROKU_AC_BASH_SETUP_PATH="$HOME/Library/Caches/heroku/autocomplete/bash_setup" && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;
export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin/:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$HOME/flutter/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/Library/Android/sdk/tools/bin:$PATH"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@13/bin:$PATH"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh


# TODO: deal with homebrew stuff properly lol
test -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh && source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
test -f /opt/homebrew/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting.zsh && /opt/homebrew/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting.zsh
test -e "$HOME/.iterm2_shell_integration.zsh" && source "$HOME/.iterm2_shell_integration.zsh" || true
export PATH="$HOME/.pyenv/shims:${PATH}"
export PATH="$HOME/go/bin:$PATH"
export PYENV_SHELL=zsh
# TODO: same as above
test -f '/usr/local/Cellar/pyenv/2.0.7/libexec/../completions/pyenv.zsh' && source '/usr/local/Cellar/pyenv/2.0.7/libexec/../completions/pyenv.zsh'
test -f '/opt/homebrew/opt/pyenv/completions/pyenv.zsh' && source '/opt/homebrew/opt/pyenv/completions/pyenv.zsh'
command pyenv rehash 2>/dev/null
pyenv() {
  local command
  command="${1:-}"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(pyenv "sh-$command" "$@")";;
  *)
    command pyenv "$command" "$@";;
  esac
}

alias clock="tty-clock -tSbBc"
alias mirror="scrcpy"
alias project="cd $HOME/documents/projects"
alias src="cd $HOME/documents/src"
alias chconnect="adb connect 192.168.43.1:5555"
alias chinstall="adb install -r"
alias blocks="adb forward tcp:8080 tcp:8080"
alias pi-code="ssh -N -L 8080:127.0.0.1:8080 pi@raspberrypi.local"
alias cat="bat"
alias ls="exa --long --header --git -F -a -b --group-directories-first" 
alias t="gittower"
alias n="nnn"

# cd with fgh (https://github.com/Matt-Gleich/fgh)
fcd() { cd "$(fgh ls "$@" 2>/dev/null)" || ( echo "Failed to find repository" && return 1; ) }

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/bit bit






export HOMEBREW_BUNDLE_FILE="$HOME/Brewfile"
brewfile() {
    local LOCK_PATH
    echo "Saving Brewfile to $HOMEBREW_BUNDLE_FILE..."
    # saves current state of installed formulae
    brew bundle dump --force

    LOCK_PATH="${HOMEBREW_BUNDLE_FILE}.lock.json"
    if [[ -e $LOCK_PATH ]]; then
        rm $LOCK_PATH
    fi
    echo "Done."
}

clean() {
    brew cleanup --prune=all -s -v -d
    brew autoremove
    rm -rf "$(brew --cache)"
    npm cache verify
    yarn cache clean
    cargo cache -e
    pnpm store prune
    nvm cache clear
    docker image prune -a -f
}

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh" # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

alias c="code"

cx() {
	code $* && exit
}

cxf() {
	proj_path=$(fgh ls $*)
	cx $proj_path
}

ix() {
	idea $* && exit
}

ixf() {
	proj_path=$(fgh ls $*)
	ix $proj_path
}


rcd() {
	cd $(git rev-parse --show-toplevel)
}

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH="$HOME/Library/Caches/heroku/autocomplete/zsh_setup" && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

pm-patch() {
	for i in ~/library/fonts/PortlandMono-*; do
	  fontforge -script ~/nerd-fonts/font-patcher -c $i
	done
}

fixaudio() {
	echo "Killing CoreAudio processes... src: https://apple.stackexchange.com/a/64024"
	sudo kill -9 `ps ax|grep 'coreaudio[a-z]' | awk '{print $1}'`
}

alias hide-desk="defaults write com.apple.finder CreateDesktop false && killall Finder"
alias show-desk="defaults write com.apple.finder CreateDesktop true && killall Finder"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

alias e="exit" x="exit"

if [[ -r "/Applications/Tailscale.app/Contents/MacOS/Tailscale" ]]; then
	alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
fi

# Bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

alias arc="$HOME/scripts/alexa-remote-control/alexa_remote_control.sh"
alias busy="genact"

alias gs="git status"

alias y="yarn" ni="npm i" pi="pnpm install"

up() {
	if [[ -e "package.json" ]]; then
		if [[ -s "./yarn.lock"  || -s "./package-lock.json" ]]; then
			echo "Importing from lockfile..."
			pnpm import
		fi
		echo "Installing..."
		pnpm install
	else
		echo "No package.json file detected."
	fi
}

export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"
export PATH="/Users/json/.rbenv/versions/3.1.1/bin/:$PATH"


# bun completions
[ -s "/Users/json/.bun/_bun" ] && source "/Users/json/.bun/_bun"

kill-port() {
	kill -9 $(lsof -t -i:$1)
}

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"
