export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/firefox

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export PATH

if [ -n "$DESKTOP_SESSION" ]; then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

# Neo:                          # Neo Tastaturbelegung
PATH="/home/failipp/neo/:$PATH"    # Neo Tastaturbelegung
export PATH                     # Neo Tastaturbelegung
echo "DE" > /home/failipp/neo/aktuell.status
#asdf                           # Neo Tastaturbelegung; mit einem # am Zeilenanfang bleibt QWERTZ das Standardlayout, sonst ist es Neo

# pyenv:
export PATH="/home/failipp/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
