autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
autoload -U edit-command-line

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
zle -N edit-command-line

# start typing + [Up-Arrow] - fuzzy find history forward
bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search

# start typing + [Down-Arrow] - fuzzy find history backward
bindkey "${terminfo[kcud1]}" down-line-or-beginning-search

# [Space] - do history expansion
bindkey ' ' magic-space

# [Ctrl+RightArrow] - move forward one word
bindkey '^[[1;5C' forward-word

# [Ctrl+LeftArrow] - move backward one word
bindkey '^[[1;5D' backward-word
