function share_history {
  history -a
  history -c
  history -r
}

PROMPT_COMMAND='share_history'
shopt -u histappend
export HISTSIZE=9999

alias ll='ls -l'
alias la='ls -a'
alias s=screen
