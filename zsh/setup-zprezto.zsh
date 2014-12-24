if [ -n "$ZSH_VERSION" ]; then
  if [ ! -d "$HOME/.zprezto" ]; then
    __clone 'git@github.com:bling/prezto.git' '.zprezto'
    pushd
    cd "$BASEDIR/.zprezto"
    git remote add upstream https://github.com/sorin-ionescu/prezto.git
    popd

    https://github.com/sorin-ionescu/prezto.git
    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
      ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done
  fi
fi


# if [[ ! "dumb" = "$TERM" ]]; then 
#   zstyle ':prezto:*:*' color 'no'
# else
#   zstyle ':prezto:*:*' color 'yes'
# fi


# zstyle ':prezto:load' pmodule \
#   'environment' \
#   'terminal' \
#   'editor' \
#   'history' \
#   'history-substring-search' \
#   'directory' \
#   'spectrum' \
#   'utility' \
#   'completion' \
#   'git' \
#   'archive' \
#   'prompt'

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

zstyle ':prezto:module:git:info' verbose no

## turn off the right hand side dirty clean etc. icons
zstyle ':prezto:module:git:info:keys' format \
  'prompt'  ' git%b' \
  'rprompt' ''


