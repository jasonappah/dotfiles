function clean --description "Clean up caches and unused files"
    rm -rf ~/Library/Caches/pypoetry/virtualenvs
    rm -rf ~/.local/share/virtualenvs/*
    
    cd ~/developer/projects
    no-mod
    no-py-mod
    
    cd ~/developer/src
    no-mod
    no-py-mod
    
    # TODO: in every repo, go up to 2 levels deep to find .next, target, etc directories that are gitignored. delete those

    brew cleanup --prune=all -s -v -d
    brew autoremove
    rm -rf (brew --cache)
    
    npm cache clean -f
    yarn cache clean
    cargo cache -r all
    pnpm store prune
    
    docker image prune -a -f
    docker system prune
end 