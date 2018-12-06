# .bash_profile
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

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

#### display branch name on PS1 ###
function length()
{
  echo -n ${#1}
}

function init-prompt-git-branch()
{
  git symbolic-ref HEAD 2>/dev/null >/dev/null &&
  echo "($(git symbolic-ref HEAD 2>/dev/null | sed 's/^refs\/heads\///'))"
}

if which git 2>/dev/null >/dev/null
then
  export PS1_GIT_BRANCH='\[\e[$[COLUMNS]D\]\[\e[1;31m\]\[\e[$[COLUMNS-$(length $(init-prompt-git-branch))]C\]$(init-prompt-git-branch)\[\e[$[COLUMNS]D\]\[\e[0m\]'
else
  export PS1_GIT_BRANCH=
fi
#### end ####

PS1="\n\t \u@\h:\[\e[91m\]\w ${PS1_GIT_BRANCH}\e[0m\]\n$"
