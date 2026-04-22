ranger () {
    fname=$( mktemp )
    trap "rm $fname" EXIT

    command ~/.local/venvs/ranger/.venv/bin/ranger --choosedir=$fname "$@"
    dst=$( cat $fname )
    [[ -n "$dst" && -d "$dst" ]] && cd "$dst"
}
