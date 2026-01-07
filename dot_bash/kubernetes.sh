k8drain () {
    kubectl cordon "$@"
    kubectl drain "$@" --ignore-daemon-sets --delete-emptydir-data
}
