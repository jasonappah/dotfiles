# TODO: use abbr?

# Aliases migrated from .zshrc
alias nogp="sudo killall GlobalProtect && sudo killall PanGPS"
alias quitvpn="launchctl unload /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*"
alias usevpn="launchctl load /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*"
alias clock="tty-clock -tSbBc"
alias mirror="scrcpy"
alias project="cd $HOME/documents/projects"
alias p="project"
alias src="cd $HOME/documents/src"
alias s="src"
alias cat="bat"
alias ls="eza --long --header --git -F -a -b --group-directories-first"
alias t="gittower"
alias n="nnn"
alias c="code"
alias e="exit"
alias x="exit"
alias h="cd ~"
alias gs="git status"
alias z="zed"
alias hide-desk="defaults write com.apple.finder CreateDesktop false && killall Finder"
alias show-desk="defaults write com.apple.finder CreateDesktop true && killall Finder"
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"

# Set tailscale alias if the app exists
if test -r "/Applications/Tailscale.app/Contents/MacOS/Tailscale"
    alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
end 