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
