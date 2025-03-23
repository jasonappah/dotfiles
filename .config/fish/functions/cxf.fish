function cxf --description "Open repository in VS Code and exit"
    set proj_path (fgh ls $argv)
    cx $proj_path
end 