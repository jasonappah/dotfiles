function kill-port --description "Kill process running on specified port"
    kill -9 (lsof -t -i:$argv[1])
end 