alias lk='ls -halF'
alias py='python3'
alias vimrc='vim ~/.vimrc'
alias lsblkverbose='sudo lsblk -o NAME,FSTYPE,TYPE,SIZE,MOUNTPOINT,LABEL,UUID'
alias admin='tmux new -s admin -d "sudo -s" \; attach'

# RaspberryPi
alias music='mocp -S && mocp -o s,n,r -p && tmux new -s music -n musicplayer -d "mocp" \; new-window -t 2 -d -n volume "alsamixer -c 0" \; attach'

# Manjaro
alias startssh='eval $(keychain --eval --agents ssh id_rsa)'
