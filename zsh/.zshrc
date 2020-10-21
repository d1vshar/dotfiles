# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

alias zshconf="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

alias ping="ping -c 5"

alias ls="ls --color=auto"
alias lsh="ls -d .* --color=auto"

alias ..="cd .."

alias steam="STEAM_FRAME_FORCE_CLOSE=1 steam"

alias opium="optimus-manager --print-mode"
alias opiums="optimus-manager --switch"

if [ -f ~/.ghpkg ]; then
    source ~/.ghpkg
else
    print "dammit. ~/.ghpkg not found."
fi

export EDITOR=/usr/bin/nvim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/anshu/.sdkman"
[[ -s "/home/anshu/.sdkman/bin/sdkman-init.sh" ]] && source "/home/anshu/.sdkman/bin/sdkman-init.sh"
