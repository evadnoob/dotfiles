
#settitle() {
#    printf "\033k$1\033\\"
#}
#export PROMPT_COMMAND='$(settitle $HOST:$PWD)'

if [[ "dumb" = "$TERM" ]]; then
    # This shell runs inside an Emacs *shell*/*term* buffer.
    unsetopt zle
    unset PROMPT_COMMAND
    #PROMPT='%{$fg[cyan]%}%c %(!.#.%%) '
    PROMPT="> "
    #unset PS1
    #export TERM=xterm
elif [[ "eterm-color" = "$TERM" ]]; then 
    precmd() {
        echo -e "\033AnSiTu" "$LOGNAME" # $LOGNAME is more portable than using whoami.
        echo -e "\033AnSiTc" "$(pwd)"
        if [ $(uname) = "SunOS" ]; then
	    # The -f option does something else on SunOS and is not needed anyway.
       	    hostname_options="";
        else
            hostname_options="-f";
        fi
        echo -e "\033AnSiTh" "$(hostname $hostname_options)" # Using the -f option can cause problems on some OSes.
    }
# elif [[ "$TERM" == "" ]]; then
#     echo "TERM was not set, setting to default"
#     export TERM=xterm-256color
# elif [[ -n "$TMUX" ]]; then
#     export TERM=screen-256color
fi 

