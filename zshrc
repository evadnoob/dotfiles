# -*- mode: shell-script; -*-
# My dotfiles, uses zprezto! 
#
export ZSH_DOTFILES=~/dotfiles/zsh

# source ${ZSH_DOTFILES}/setup-term.zsh

# if [[ ! "dumb" = "$TERM" ]]; then 
#   #source ${ZSH_DOTFILES}/setup-oh-my-zsh.zsh
#   #
#   source ${ZSH_DOTFILES}/setup-zprezto.zsh
# fi

# # source ${ZSH_DOTFILES}/setup-java.zsh
# # source ${ZSH_DOTFILES}/setup-aws.zsh
# # source ${ZSH_DOTFILES}/setup-emacs.zsh
# # source ${ZSH_DOTFILES}/setup-less.zsh
# # source ${ZSH_DOTFILES}/setup-functions.zsh
# # source ${ZSH_DOTFILES}/setup-vim.zsh
#  source ${ZSH_DOTFILES}/setup-zsh.zsh
# # source ${ZSH_DOTFILES}/setup-ssh.zsh
# # source ${ZSH_DOTFILES}/setup-postgres.zsh
# # source ${ZSH_DOTFILES}/setup-gcloud.zsh
# # source ${ZSH_DOTFILES}/setup-ranger.zsh
# #source ${ZSH_DOTFILES}/setup-haste.sh
source ${ZSH_DOTFILES}/setup-golang.zsh
source ${ZSH_DOTFILES}/setup-mysql.zsh
# source ~/dotfiles/setup-invision-env.sh

# export PATH="/usr/local/bin:${PATH}"

# #make sure the path to emacsclient is before /usr/bin/emacsclient
# #export PATH="/Applications/Emacs.app/Contents/MacOS/bin:$PATH" 
# # export PATH="~/Applications/Emacs-24.2.91/Emacs.app/Contents/MacOS/bin:$PATH"

# #bindkey -M emacs '^x backspace' backward-kill-line

# export TERM=xterm-256color

# #export WORDCHARS=''
# export GIT_MERGE_AUTOEDIT=no

# autoload -U select-word-style
# select-word-style bash
# #bindkey '^?' backward-delete-word

# bindkey -M isearch '^R' history-incremental-search-backward
# bindkey -M isearch '^S' history-incremental-search-forward
# bindkey -M emacs '^x^?' backward-kill-line


# setopt nocorrectall

# # 10 second wait if you do something that will delete everything.  I wish I'd had this before...
# setopt RM_STAR_WAIT


# prevent jobs spawned in the background from being terminated when quitting shell.
setopt NO_HUP

# set -o vi
# bindkey -M viins 'jj' vi-cmd-mode




# #source ~/projects/base16-shell/base16-twilight.dark.sh
# export PATH=${PATH}:~/google-cloud-sdk/bin


# The next line updates PATH for the Google Cloud SDK.
#if [[ -f '/home/david/google-cloud-sdk/path.zsh.inc' ]]; source '/home/david/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
#if [[ -f  '/home/david/google-cloud-sdk/completion.zsh.inc']]; source '/home/david/google-cloud-sdk/completion.zsh.inc'



source ${ZSH_DOTFILES}/setup-aliases.zsh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

#prompt pure

#prompt  walters


# eval $(dircolors -p | sed -e 's/DIR 01;34/DIR 01;39/' | dircolors /dev/stdin)


# ## turn off annoying beep/bell
# if [ -n "$DISPLAY" ]; then
#         xset b off
# fi


# alias zoom-reset='xrandr --output Virtual1  --mode 2560x1600 --scale "1x1"'
# alias zoom-big='zoom-reset && xrandr --output Virtual1  --mode 2560x1600 --scale ".70x.70"'
# alias zoom-normal='zoom-reset && xrandr --output Virtual1  --mode 2560x1600 --scale ".90x.90"'


alias zoom-reset='xrandr --output Virtual1  --mode 3840x2400 --scale "1x1"'
alias zoom-big='zoom-reset && xrandr --output Virtual1  --mode 3840x2400 --scale ".50x.50"'
alias zoom-normal='zoom-reset && xrandr --output Virtual1  --mode 3840x2400 --scale ".55x.55"'
alias zoom-forty='zoom-reset && xrandr --output Virtual1  --mode 3840x2400 --scale ".40x.40"'


#prompt minimal

# allow the comment char  to be used from interactive shells, nice for typing something and saving it
setopt interactivecomments

# setup z for jumping around
# https://github.com/rupa/z
if [ -f ~/dotfiles/z/z.sh ]; then
    source ~/dotfiles/z/z.sh
fi


if [ -f $HOME/.cargo/env ]; then
    source $HOME/.cargo/env
fi




# # Gotham Shell
#GOTHAM_SHELL="$HOME/.config/gotham/gotham.sh"
#[[ -s $GOTHAM_SHELL ]] && source $GOTHAM_SHELL


# Setup zsh-autosuggestions                                                                                       
if [ -f "~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
  source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=243"


export NVM_DIR="/home/david/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


[ -f "~/projects/antigen.zsh" ] && . source ~/projects/antigen.zsh

#export ZSH_AUTOSUGGEST_STRATEGY=match_prev_cmd
antigen use oh-my-zsh

# antigen theme eendroroy/alien-minimal alien-minimal 
# antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git
antigen bundle command-not-found
antigen bundle rupa/z

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
antigen apply

antigen theme pure

alias gist='gist-paste -c'
alias tree='tree -D -F -h -f'

if [ -f /usr/local/bin/exa ]; then
   alias ls='exa -F --git'
fi
   



bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    #RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}$(git_custom_status) $EPS1"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

# zle -N zle-line-init
# zle -N zle-keymap-select
export KEYTIMEOUT=1
