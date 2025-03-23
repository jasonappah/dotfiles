function brewfile --description "Save current Homebrew state to Brewfile"
    set -l LOCK_PATH "$HOMEBREW_BUNDLE_FILE.lock.json"
    
    echo "Saving Brewfile to $HOMEBREW_BUNDLE_FILE..."
    brew bundle dump --force

    if test -e $LOCK_PATH
        rm $LOCK_PATH
    end
    
    echo "Done."
end 