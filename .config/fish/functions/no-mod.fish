function no-mod --description "Remove node modules directories recursively"
    find . -name "node_modules" -type d -prune -exec rm -rf '{}' +
    find . -name ".next" -type d -prune -exec rm -rf '{}' +
    find . -name ".vite" -type d -prune -exec rm -rf '{}' +
end 