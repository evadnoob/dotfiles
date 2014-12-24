# setup-oh-my-zsh

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"

#ZSH_THEME="dmb"
ZSH_THEME="agnoster"
#ZSH_THEME="powerline"

# POWERLINE_RIGHT_A=""
# POWERLINE_SHOW_GIT_ON_RIGHT="true"
# POWERLINE_DETECT_SSH="true"
# POWERLINE_GIT_INFO_RIGHT=$'$(git_prompt_info)'

POWERLINE_GIT_CLEAN="✔"
POWERLINE_GIT_DIRTY="✘"
POWERLINE_GIT_ADDED="%F{green}✚%F{black}"
POWERLINE_GIT_MODIFIED="%F{blue}✹%F{black}"
POWERLINE_GIT_DELETED="%F{red}✖%F{black}"
POWERLINE_GIT_UNTRACKED="%F{yellow}✭%F{black}"
POWERLINE_GIT_RENAMED="➜"
POWERLINE_GIT_UNMERGED="═"


# Customize to your needs...
plugins=(git osx npm node zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh