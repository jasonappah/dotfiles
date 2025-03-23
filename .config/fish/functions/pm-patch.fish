function pm-patch --description "Patch Portland Mono fonts with Nerd Fonts"
    for i in ~/library/fonts/PortlandMono-*
        fontforge -script ~/nerd-fonts/font-patcher -c $i --careful -l=false
    end
end 