# .bash_profile
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

PS1="\n\t \u@\h:\[\e[91m\]\w ${PS1_GIT_BRANCH}\e[0m\]\n$"

export LS_COLORS='di=00;36'
alias l='ls -lh'
alias ll='ls -lhA'
alias la='ls -A'

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/.local/bin:$HOME/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
