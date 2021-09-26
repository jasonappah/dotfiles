if [[ -r "$HOME/.special.zsh" ]]; then
  source ~/.special.zsh
fi


macchina --theme lithium -S -U -r -H WindowManager -H DesktopEnvironment

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [[ `uname` == "Darwin" ]]; then
    ON_MAC=true
else
    ON_MAC=false
fi

#### FIG ENV VARIABLES ####
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####

alias gpgpls="gpgconf --kill gpg-agent"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
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
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# heroku autocomplete setup
HEROKU_AC_BASH_SETUP_PATH=/Users/jasonaa/Library/Caches/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;
export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin/:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$HOME/flutter/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/Library/Android/sdk/tools/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
test -e /Users/jasonaa/.iterm2_shell_integration.zsh && source /Users/jasonaa/.iterm2_shell_integration.zsh || true
export PATH="/Users/jasonaa/.pyenv/shims:${PATH}"
export PATH="/Users/jasonaa/go/bin:$PATH"
export PYENV_SHELL=zsh
source '/usr/local/Cellar/pyenv/2.0.7/libexec/../completions/pyenv.zsh'
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
alias project="cd ~/documents/projects"
alias src="cd ~/documents/src"
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent
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


#### FIG ENV VARIABLES ####
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####

export HOMEBREW_BUNDLE_FILE="$HOME/Brewfile"
brewfile() {
    local LOCK_PATH BACKUP_LOCK_PATH
    echo "Saving Brewfile to $HOMEBREW_BUNDLE_FILE..."
    # saves current state of installed formulae
    brew bundle dump --force

    LOCK_PATH="${HOMEBREW_BUNDLE_FILE}.lock.json"
    BACKUP_LOCK_PATH="${LOCK_PATH}-old-$(date)"
    # if we don't rename the old Brewfile.lock.json, iirc brew bundle will try to install deps with the lockfile which isn't what we want
    # we just want to save the current system state
    if [[ -e $LOCK_PATH ]]; then
        echo "Backing up $LOCK_PATH to $BACKUP_LOCK_PATH..."
        mv $LOCK_PATH $BACKUP_LOCK_PATH
    fi
    
    echo "Generating new $LOCK_PATH..."
    brew bundle
    if [[ -e $BACKUP_LOCK_PATH ]]; then
        echo "Removing $BACKUP_LOCK_PATH..."
        rm $BACKUP_LOCK_PATH
    fi
    echo "Done."
}

clean() {
    brew cleanup --prune=all -s -v -d
    npm cache verify
    yarn cache clean
}
