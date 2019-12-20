#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

export DEV_NAMESPACE=ralf-dev
export KUBECONFIG=$KUBECONFIG:~/.kube/config:~/.kube/config-switch-dev
export VISUAL=nano
export EDITOR=nano
export BROWSER=firefox
