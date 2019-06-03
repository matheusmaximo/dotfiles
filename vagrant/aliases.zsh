vagrant_halt_all() {
    vagrant global-status | awk '/virtualbox running/{ print $1 }' | xargs vagrant halt
}