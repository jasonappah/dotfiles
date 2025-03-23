function no-py-mod --description "Remove Python virtual environments recursively"
    find . -name "venv" -type d -prune -exec rm -rf '{}' +
    find . -name ".venv"  -type d -prune -exec rm -rf '{}' +
    find . -name "__pycache__" -type d -prune -exec rm -rf '{}' +
end 