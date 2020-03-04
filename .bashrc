#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTFILESIZE=10000
export HISTCONTROL=ignoredups:erasedups

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias yay='yay -Pw && yay'

# dotfiles alias
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias etcconfig='git --git-dir=$HOME/.etccfg/ --work-tree=/etc'

PS1='[\u@\h \W]\$ '

if { [ "$TERM" != "screen-256color" ] || [ -z "$TMUX" ]; } &&  [ "$TERM_PROGRAM" != "vscode" ]; then
  tmux attach -t base || tmux new -s base
fi

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# add Pulumi to the PATH
export PATH=$PATH:$HOME/.pulumi/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/zenon/DEV/google-cloud-sdk/path.bash.inc' ]; then . '/home/zenon/DEV/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/zenon/DEV/google-cloud-sdk/completion.bash.inc' ]; then . '/home/zenon/DEV/google-cloud-sdk/completion.bash.inc'; fi
