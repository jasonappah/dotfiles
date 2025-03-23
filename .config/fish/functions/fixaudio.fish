function fixaudio --description "Fix audio on macOS by killing CoreAudio processes"
    echo "Killing CoreAudio processes... src: https://apple.stackexchange.com/a/64024"
    sudo kill -9 (ps ax | grep 'coreaudio[a-z]' | awk '{print $1}')
end 