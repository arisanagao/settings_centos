# .bash_profile
PS1="\n\u@\h:\[\e[91m\]\w\e[0m\]\n$"
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

export PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"