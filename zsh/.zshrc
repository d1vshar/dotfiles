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
