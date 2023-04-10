########
# Keys #
########

# Set emacs keybinds
bindkey -e

# Define keys
typeset -g -A key

key[Backspace]=${terminfo[kbs]}
key[Delete]=${terminfo[kdch1]}
key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}
key[Left]=${terminfo[kcub1]}
key[Right]=${terminfo[kcuf1]}
key[Shift+Tab]=${terminfo[kcbt]}
key[Ctrl+Left]=${terminfo[kLFT5]}
key[Ctrl+Right]=${terminfo[kRIT5]}
key[Alt+Del]=${terminfo[kDC3]}

function key_set {
	[[ -n "$1" ]] && bindkey -- "$1" $2
}

# Set delete behaviour
key_set ${key[Backspace]} backward-delete-char
key_set ${key[Delete]} delete-char

# Comp go back
key_set ${key[Shift+Tab]} reverse-menu-complete

# Jump word
key_set ${key[Ctrl+Left]} backward-word
key_set ${key[Ctrl+Right]} forward-word

# Kill word
key_set ${key[Alt+Del]} kill-word

# Remove path parts individually
autoload -U select-word-style
select-word-style bash

# Search history with arrow keys
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
key_set ${key[Up]} up-line-or-beginning-search
key_set ${key[Down]} down-line-or-beginning-search

# Ensure application mode
if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
	autoload -Uz add-zle-hook-widget
	function zle_application_mode_start { echoti smkx }
	function zle_application_mode_stop { echoti rmkx }
	add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
	add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi
