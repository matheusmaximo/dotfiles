vagrant_halt_all() {
    vagrant global-status | awk '/virtualbox running/{ print $1 }' | xargs vagrant halt
}

alias v="vagrant"
alias vs="vagrant status"
alias vu="vagrant up"
alias vp="vagrant provision"
alias vup="vagrant up --provision"
alias vh="vagrant halt"
alias vha="vagrant_halt_all"
