#!/bin/bash
# Define the clock
time_local() {
        DATETIME=$(date "+%a %b %d, %X:%:z %Z")

        echo -n "$DATETIME"
}

time_gmt() {
        DATETIME=$(date -u "+%a %b %d, %X:%:z %Z ")

        echo -n "$DATETIME"
}


DIRNAME=$(dirname $0)
. ${DIRNAME}/colors

# Print the clock

while true; do
    #echo -e "%{c}| %{r}%{F#e4e4e4}%{B$COLOR_DEFAULT_BG} $(Clock) %{F-}%{B-}  \uf242 Battery: 0"
    #echo -e "%{l} %{F#ffaf00}\uf120 terminal %{F-}     \uf198 Slack    \uf296 firefox    %{c}| %{r}%{F#e4e4e4}%{B$COLOR_DEFAULT_BG} $(Clock) %{F-}%{B-}  \uf1eb \uf096 "
    echo -e "%{l}        %{c} _ %{r}%{F#e4e4e4}%{B$COLOR_DEFAULT_BG} $(time_local)   $(time_gmt) %{F-}%{B-} "
    sleep 1
done
