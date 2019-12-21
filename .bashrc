#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTFILESIZE=10000
export HISTCONTROL=ignoredups:erasedups
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export PATH=$PATH:$HOME/.local/bin

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# dotfiles alias
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias etcconfig='git --git-dir=$HOME/.etccfg/ --work-tree=/etc'

PS1='[\u@\h \W]\$ '
export PATH="${PATH}:/home/zenon/.gem/ruby/2.5.0/bin"
export GEM_HOME=$HOME/.gem


if { [ "$TERM" != "screen-256color" ] || [ -z "$TMUX" ]; } &&  [ "$TERM_PROGRAM" != "vscode" ]; then
  tmux attach -t base || tmux new -s base
fi

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
