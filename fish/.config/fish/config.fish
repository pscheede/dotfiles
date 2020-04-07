if set -q SSH_CONNECTION

else
    wal_fish
end

status --is-interactive; and source (pyenv init -|psub)
