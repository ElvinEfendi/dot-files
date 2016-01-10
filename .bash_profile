export PATH=/usr/local/bin:$PATH

export CLICOLOR=1

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

source ~/.git_completion.bash

# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]$ "

alias ll="ls -l"
alias lla="ls -al"

alias lockscreen='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

export EDITOR=vim

export PATH=~/packer:$PATH
