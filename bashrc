#!/usr/bin/env bash

export HISTCONTROL=erasedups
export HISTSIZE=10000
export HISTFILESIZE=20000
shopt -s histappend
shopt -s checkwinsize
shopt -s globstar

export VISUAL=vim
export EDITOR=vim

export PATH="/opt/puppetlabs/bin:$PATH"

# Set up colors for directories and filetypes
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# Source all sub-configurations in the bash.d directory
for rc in $HOME/.config/bash.d/*.sh
do
    . "$rc"
done

if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
