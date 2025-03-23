function rcd --description "cd to git repository root"
    cd (git rev-parse --show-toplevel)
end 