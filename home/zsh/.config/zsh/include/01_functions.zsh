#############
# Functions #
#############

# Create random directory in `~/tmp` and cd into it
function tmpdir {
    local dir="$(mktemp -dp ~/tmp XXXXXXXXXX.d)"
    cd $dir
}

# Delete all temporary directories
function ctmp {
    local files=$(fd "^.{10}\.d$" ~/tmp --color=always)

    if ! [[ -n "$files" ]]; then
        return 0
    fi

    echo "Press y to delete the following directories in '$HOME/tmp':"
    echo $files

    if read -q; then
        rm -rf $(fd "^.{10}\.d$" ~/tmp)
    fi
}

# Quickly edit zsh config files
function ze {
    local arg=$1

    # Check if argument is empty
    if [[ -z "$arg" ]]; then
        local file="$ZSH_CONF_DIR/main.zsh"
    else
        # Search for files matching the pattern
        local files="$(fd $arg $ZSH_CONF_DIR/include/)" 2>/dev/null

        # Get the first result of the search or create a new file
        if [[ -n "$files" ]]; then
            local file="$(echo $files | cut -d' ' -f1)"
        else
            local file="$ZSH_CONF_DIR/include/$arg.zsh"
        fi
    fi

    $EDITOR $file
    exec zsh
}

# Get file (girlfriend) – moves a file into the current directory
function gf {
    if [[ -z "$1" ]]; then
        echo "No file provided."
        return 1
    fi

    mv $1 .
}
