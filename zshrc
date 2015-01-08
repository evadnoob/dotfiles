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

export PATH="/usr/local/bin:${PATH}"



#make sure the path to emacsclient is before /usr/bin/emacsclient
#export PATH="/Applications/Emacs.app/Contents/MacOS/bin:$PATH" 
export PATH="~/Applications/Emacs-24.2.91/Emacs.app/Contents/MacOS/bin:$PATH"

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
setopt share_history


# prevent jobs spawned in the background from being terminated when quitting shell.
setopt NO_HUP


set -o vi
