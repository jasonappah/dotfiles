function ixf --description "Open repository in IntelliJ IDEA and exit"
    set proj_path (fgh ls $argv)
    ix $proj_path
end 