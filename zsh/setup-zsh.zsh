setopt MULTIOS

export DIRSTACKSIZE=8
setopt autopushd pushdminus pushdsilent pushdtohome

#source ~/dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source ~/dotfiles/zsh-history-substring-search/zsh-history-substring-search.zsh


bindkey '^f' vi-forward-word
# # or
# bindkey '^f' vi-forward-blank-word


zmodload zsh/terminfo
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down


#export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='bg=magenta,fg=white,bold'
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="fg=white,bold"
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='bg=red,fg=white,bold'
export HISTORY_SUBSTRING_SEARCH_GLOBBING_FLAGS='i'


function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/N}/(main|viins)/INS}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
#. ~/dotfiles/zsh/vim_mode_indicator.zsh

# Report the status of background jobs immediately, rather than waiting until just before printing a prompt.
setopt notify

export HISTIGNORE="ls:ll:cd:cd -:pwd:exit:date:* --help"

# multiple zsh sessions will append to the same history file (incrementally, after each command is executed)
setopt inc_append_history
setopt share_history

# purge duplicates first
setopt hist_expire_dups_first

# if a new command line being added to the history list duplicates an older one, the older command is removed from the list
setopt hist_ignore_all_dups

# reduce unnecessary blanks from commands being written to history
setopt hist_reduce_blanks

# only show rprompt on current line.
setopt transient_rprompt

# Setup zsh-autosuggestions
if [ -f "~/dotfiles/zsh-autosuggestions/autosuggestions.zsh" ]; then 
  source ~/dotfiles/zsh-autosuggestions/autosuggestions.zsh
fi


# Enable autosuggestions automatically
zle-line-init() {
    # zle autosuggest-start

    #start off in normal/command mode instead of insert mode
    #zle -K vicmd; 
}

zle -N zle-line-init

# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
#bindkey '^T' autosuggest-toggle


autoload -Uz compinit
compinit

setopt autolist
setopt listtypes
setopt menucomplete

zstyle ':prezto:module:editor' key-bindings 'vi'

