set -g -x PATH /usr/local/bin /bin /usr/sbin $PATH
set -x GOPATH $HOME/.go

set -x EDITOR "vim"
set -x VISUAL "gvim"

alias gvim "gvim -p --remote-tab-silent"
alias ls "ls --color=auto"
alias ll "ls --color=auto -thor"
alias excuse "echo `telnet bofh.jeffballard.us 666 2>/dev/null` |grep --color -o"
alias svim "sudo vim"
alias grep "grep --color=always"
alias top "htop"

alias sshValkiria "ssh bananapi@Valkiria -X"

ulimit -c unlimited

function su
    /bin/su --shell=/usr/bin/fish $argv
end
set fish_greeting
