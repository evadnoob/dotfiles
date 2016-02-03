# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
        PATH="$HOME/bin:$PATH"
fi
#for android build
export USE_CCACHE=1
