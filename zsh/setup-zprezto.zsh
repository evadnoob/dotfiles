if [ -n "$ZSH_VERSION" ]; then
  if [ ! -d "$HOME/.zprezto" ]; then
    git clone 'git@github.com:bling/prezto.git' '.zprezto'
    pushd
    cd "$BASEDIR/.zprezto"
    git remote add upstream https://github.com/sorin-ionescu/prezto.git
    popd

    #https://github.com/sorin-ionescu/prezto.git
    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
      ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done
  fi
fi


if [ -f  ${ZDOTDIR:-$HOME}/.zprezto/init.zsh ]; then 
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi 


