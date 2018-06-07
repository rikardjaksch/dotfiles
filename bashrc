#!/usr/bin/env bash

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
