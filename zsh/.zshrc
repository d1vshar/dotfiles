alias steam="STEAM_FRAME_FORCE_CLOSE=1 steam"

alias opium="optimus-manager --print-mode"
alias opiums="optimus-manager --switch"
alias nvimdiff="nvim -d"

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

export PATH=$PATH:$HOME/bin

export PATH=/opt/cuda/bin:$PATH
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/anshu/.sdkman"
[[ -s "/home/anshu/.sdkman/bin/sdkman-init.sh" ]] && source "/home/anshu/.sdkman/bin/sdkman-init.sh"
