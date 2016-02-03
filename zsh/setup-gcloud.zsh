fpath=(/home/david/projects/gcloud-zsh-completion/src $fpath)

autoload -U compinit compdef
compinit

export CLOUDSDK_COMPUTE_ZONE=us-central1-b

