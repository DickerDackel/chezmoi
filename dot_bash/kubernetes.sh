k8drain () {
    kubectl cordon "$@"
    kubectl drain "$@" --ignore-daemonsets --delete-emptydir-data
}
