# -*- mode: shell-script; -*-
# My dotfiles, uses zprezto! 
#
export ZSH_DOTFILES=~/dotfiles/zsh

source ${ZSH_DOTFILES}/setup-term.zsh

if [[ ! "dumb" = "$TERM" ]]; then 
  #source ${ZSH_DOTFILES}/setup-oh-my-zsh.zsh
  #
  source ${ZSH_DOTFILES}/setup-zprezto.zsh
fi

# source ${ZSH_DOTFILES}/setup-java.zsh
# source ${ZSH_DOTFILES}/setup-aws.zsh
# source ${ZSH_DOTFILES}/setup-emacs.zsh
# source ${ZSH_DOTFILES}/setup-less.zsh
# source ${ZSH_DOTFILES}/setup-functions.zsh
# source ${ZSH_DOTFILES}/setup-vim.zsh
# source ${ZSH_DOTFILES}/setup-zsh.zsh
# source ${ZSH_DOTFILES}/setup-ssh.zsh
# source ${ZSH_DOTFILES}/setup-postgres.zsh
# source ${ZSH_DOTFILES}/setup-gcloud.zsh
# source ${ZSH_DOTFILES}/setup-ranger.zsh

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


export TERM=xterm-256color


source ~/projects/base16-shell/base16-twilight.dark.sh
#source ~/projects/base16-shell/base16-grayscale.dark.sh

export PATH=${PATH}:~/google-cloud-sdk/bin


# The next line updates PATH for the Google Cloud SDK.
source '/home/david/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/home/david/google-cloud-sdk/completion.zsh.inc'



source ${ZSH_DOTFILES}/setup-aliases.zsh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

prompt pure
