alias steam="STEAM_FRAME_FORCE_CLOSE=1 steam"

alias opium="optimus-manager --print-mode"
alias opiums="optimus-manager --switch"

# starship prompt sets $PS1 that messes up my hom/del/end keys. this fixes it.
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

if [ -f ~/.ghpkg ]; then
    source ~/.ghpkg
else
    print "dammit. ~/.ghpkg not found."
fi

export EDITOR=/usr/bin/nvim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/anshu/.sdkman"
[[ -s "/home/anshu/.sdkman/bin/sdkman-init.sh" ]] && source "/home/anshu/.sdkman/bin/sdkman-init.sh"
