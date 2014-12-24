
if [ -f `brew --prefix`/etc/zsh_completion ]; then
    . `brew --prefix`/etc/zsh_completion
fi

# # git zsh completion
# if [  -f /usr/local/etc/bash_completion.d/git-completion.zsh ]; then
#     . /usr/local/etc/bash_completion.d/git-completion.zsh
# fi

# # hg zsh completion
# if [  -f /usr/local/etc/bash_completion.d/hg-completion.zsh ]; then
#     . /usr/local/etc/bash_completion.d/hg-completion.zsh
# fi

fpath=(/usr/local/share/zsh-completions $fpath)

