# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

export EDITOR='/usr/bin/nvim'

alias ls='lsd'
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -lA'

alias cat='bat'

alias vi='nvim'
alias vim='nvim'

alias dnf='sudo dnf'
alias update='dnf update'

alias fuz='sudo find / | fzf'

alias info='info --vi-keys'

alias bashrc='vim ~/.bashrc'
alias i3rc='vim ~/.config/i3/config'

alias yadd='yadm add'
