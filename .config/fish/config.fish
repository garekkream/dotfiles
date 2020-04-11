set -g -x PATH /usr/local/bin /bin /usr/sbin $PATH
set -x GOPATH $HOME/.go

set -x EDITOR "vim"
set -x VISUAL "gvim"

set -g -x BIN_PATH /opt/esp-open-sdk/xtensa-lx106-elf/bin/
set -g -x SDK_PATH /opt/esp-open-sdk/sdk/
set -g -x IDF_PATH /home/garekkream/Projects/esp/esp-idf/
set -g -x GNUARMEMB_TOOLCHAIN_PATH /usr/
set -g -x ZEPHYR_TOOLCHAIN_VARIANT gnuarmemb
set -g -x GNUARMEMB_TOOLCHAIN_PATH /usr/bin/

alias gvim "gvim -p --remote-tab-silent"
alias ls "ls --color=auto"
alias ll "ls --color=auto -thor"
alias excuse "echo `telnet bofh.jeffballard.us 666 2>/dev/null` |grep --color -o"
alias svim "sudo vim"
alias grep "grep --color=always"
alias top "htop"

alias sshValkiria "ssh garekkream@Valkiria -X"

ulimit -c unlimited

function su
    /bin/su --shell=/usr/bin/fish $argv
end
set fish_greeting

