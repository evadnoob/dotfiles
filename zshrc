# -*- mode: shell-script; -*-
# My dotfiles, uses zprezto! 
#
export ZSH_DOTFILES=~/dotfiles/zsh

source ${ZSH_DOTFILES}/setup-term.zsh

if [[ ! "dumb" = "$TERM" ]]; then 
  #source ${ZSH_DOTFILES}/setup-oh-my-zsh.zsh
  source ${ZSH_DOTFILES}/setup-zprezto.zsh
fi

source ${ZSH_DOTFILES}/setup-java.zsh
source ${ZSH_DOTFILES}/setup-aws.zsh
source ${ZSH_DOTFILES}/setup-emacs.zsh
source ${ZSH_DOTFILES}/setup-aliases.zsh
source ${ZSH_DOTFILES}/setup-less.zsh
source ${ZSH_DOTFILES}/setup-functions.zsh
source ${ZSH_DOTFILES}/setup-vim.zsh
source ${ZSH_DOTFILES}/setup-zsh.zsh
source ${ZSH_DOTFILES}/setup-ssh.zsh

export PATH="/usr/local/bin:${PATH}"



#make sure the path to emacsclient is before /usr/bin/emacsclient
#export PATH="/Applications/Emacs.app/Contents/MacOS/bin:$PATH" 
# export PATH="~/Applications/Emacs-24.2.91/Emacs.app/Contents/MacOS/bin:$PATH"

#bindkey -M emacs '^x backspace' backward-kill-line



export WORDCHARS=''
export GIT_MERGE_AUTOEDIT=no

autoload -U select-word-style
select-word-style bash
#bindkey '^?' backward-delete-word

#export SBT_OPTS="-Xms512MB -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"


bindkey -M isearch '^R' history-incremental-search-backward
bindkey -M isearch '^S' history-incremental-search-forward
bindkey -M emacs '^x^?' backward-kill-line


setopt nocorrectall

# 10 second wait if you do something that will delete everything.  I wish I'd had this before...
setopt RM_STAR_WAIT



# prevent jobs spawned in the background from being terminated when quitting shell.
setopt NO_HUP


set -o vi
bindkey -M viins 'jj' vi-cmd-mode

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


export TERM=xterm-256color

# Setup zsh-autosuggestions
source /Users/daveboon/dotfiles/zsh-autosuggestions/autosuggestions.zsh

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
